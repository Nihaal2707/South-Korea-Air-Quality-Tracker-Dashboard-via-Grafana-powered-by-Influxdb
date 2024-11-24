#!/bin/bash

# elk application
# LAst amended: 17th Oct, 2024
# Use as: 
#   ./kpush_sample.sh
#   

# Calls: add_sample_records.sh 

# Objective:
#    How to go on adding streaming data into kibana
#    csv file is loaded into elasticsearch using 
#    logstash.
#    Initially a part csv file is loaded into elasticsearch. 
#    Then, overtime, row-by-row more data is appended to this
#    csv file. As more data gets appended onto it, logstash
#    streams this added row(s) to elasticsearch.
#    Timestamp gets added when data is input into elasticsearch





# Ref: 
#     1. https://coralogix.com/blog/logstash-csv-import-parse-your-data-hands-on-examples/
#     2. Ingesting csv files into elasticsearch		 
#        https://www.elastic.co/webinars/csv-logstash-ingestion
#     3. csv codec plugin:
#	 https://www.elastic.co/webinars/csv-logstash-ingestion
#     4. codec plugins:
#	 https://www.elastic.co/guide/en/logstash/current/codec-plugins.html
#     5. mutate plugin:
#        https://www.elastic.co/guide/en/logstash/current/plugins-filters-mutate.html
 
#     
# a. Our sample csv data file:
#	/home/ashok/Documents/elk/5.streaming_data/sample/sample.csv

cd /home/ashok

# b. If started as sudo then inform:
#    ref: https://askubuntu.com/a/30157/8698
if  [ $(id -u) = 0 ]; then
   echo "The script is NOT to be run as root. Run as:  ./kpush_sample.sh" >&2
   exit 1
fi



echo "    How to go on adding streaming data into kibana?"
echo "    A csv file is loaded into elasticsearch using" 
echo "    logstash."
echo "    Initially a part csv file is loaded into elasticsearch. "
echo "    Then, overtime, row-by-row remaining data is appended to this"
echo "    csv file. As more data gets appended onto it, logstash"
echo "    streams this added row(s) to elasticsearch."
echo "    Timestamp gets added when data is input into elasticsearch"
sleep 8





# c. MAKE AMENDMENTS HERE AS APPROPRIATE
# c.1   Path to csv file dataset folder
#       Put trailing slash at the end as below:
pathToFolder=/home/ashok/Documents/elk/5.streaming_data/sample/ 
# c.2 Write your filename WITHOUT csv suffix
csvfile=sample
# c.3 Your logstash configuration file
confFile=sample_read.conf
# c.4 Name of add records file:
addrecords=/home/ashok/add_sample_records.sh

# c.4 Delete earlier index 'sample', as:
read -p "Do you want to REMOVE earlier 'sample' Index from elasticsearch? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo ./quiet_kibana.sh 
    sleep 2
    curl -XDELETE localhost:9200/sample 
    sleep 2
    echo "=================="
    echo "Old index cleared"
    echo "=================="
    sudo ./quiet_stop_kibana.sh
    sleep 2
fi


##************************
## DO NOT MODIFY ANY CODE BELOW
##************************
# d.1 Suffixes to two new files that
#     would be created after splitting:
suffix1="_main"
suffix2="_rem"
# d.2
csv=".csv"
confFileDir=/etc/logstash/conf.d/$confFile

# d.3 
# Initially 20 recrods will get into elasticsearch
mainFileRecords=20
# Rest 21st line onwards till the end, records will be 
#  read line by line and will be appended into elasticsearch
remFileRecords=21


# e.1    Divide sample.csv into two parts as below:
#        Results will be sample_main.csv and
#	 sample_rem.csv			

echo "Splitting your csv file in folder $pathToFolder"
head -n  $mainFileRecords $pathToFolder$csvfile$csv > $pathToFolder$csvfile$suffix1$csv
tail -n +$remFileRecords $pathToFolder$csvfile$csv > $pathToFolder$csvfile$suffix2$csv
echo "Files split with suffix _main and _csv...Wait...."
sleep 3


# f.1 Transfer logstash conf file:
echo "Copying logstash conf file"
sudo cp $pathToFolder$confFile  $confFileDir
echo "Copying done. Wait for some time..."
sleep 3

# f.2 Execute bash file to begin reading/adding records line-by-line
# f.3 Terminate if error occurs
set -e
   
bash $addrecords &

# g.1 Restart kibana and also elasticsearch:
echo "Restarting elasticsearch, kibana and logstash"
sleep 2
cd ~
sudo ./restart_kibana.sh


echo "*****************************************"
echo "Will start logstash again. Will take a few moments..."
echo "You should see this terminal engaged"
echo "To check if 'sample' index has been created,"
echo "issue the following curl command on another terminal."
echo " Copy and paste:"
echo " curl -XGET 'localhost:9200/_cat/indices?h=index' "
echo "*****************************************"

curl -XGET 'localhost:9200/_cat/indices?h=index'

# e. Start logstash:
sudo /home/ashok/logstash/bin/logstash -f $confFileDir

################# DONE ##############
