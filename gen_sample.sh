#!/bin/bash


# Last amended: 17th Oct, 2024
# CALLED BY: ./gen_data.sh

# Objective
# 	Reads top-rows from ANY text file 
# 	one-by-one at an interval of 8 second.

#  It can be used to generate data by reading a file
#  slowly and pumping it to another file or socket:


# Usage:
# Take input from inputfile at an interval of pick_interval and send it
# to file target.csv:
#    ./gen_sample.sh  >>  /home/ashok/Documents/bitcoin/target.csv


cd ~
inputfile="/home/ashok/Documents/influxdb/tig_install/5.sample/converted.txt"



#pick_interval=8
#while read p; do    echo "$p"  ; sleep $pick_interval ;   done <$inputfile 	

# Generate a random interval between 3 and 10 sec
# StackOverflow: https://stackoverflow.com/a/71997383

lr=3
ur=10

while read p; do    echo "$p"  ; abc=$(( RANDOM * ( ur - lr ) / 32767 + lr )) ;  sleep $abc ;   done <$inputfile 


