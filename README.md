# South Korea Air Quality Analytics Dashboard

## Project Overview

This repository hosts a comprehensive air pollution and weather monitoring dashboard built using Grafana and InfluxDB on a Virtual Machine running Ubuntu Kibana. The dashboard visualizes pollution and auxiliary weather data to provide insights into air quality trends and factors affecting pollution levels in South Korea.

## Objectives

**1. Data Integration and Visualization**

•	Combine pollution data with weather parameters to uncover patterns and relationships.

•	Represent geographic distribution of pollution levels using latitude and longitude.

•	Track temporal trends of key pollutants (e.g., PM2.5, PM10, NO2) to identify seasonal and daily variations.

•	Forecast pollution levels for public safety and planning purposes.

**2.	Public Health and Policy Insights**

•	Provide actionable insights to South Koreans, enabling informed decisions about outdoor activities based on pollution forecasts.

•	Support policymakers with data to identify high-pollution areas and times, aiding in targeted interventions.

**3.	Technical Integration**

•	Demonstrate the use of open-source tools (Grafana, InfluxDB, and Ubuntu Kibana) for real-time data streaming and dashboarding.

•	Showcase a scalable pipeline for integrating and visualizing environmental data.

## Dataset Information

## Pollution Data

This dataset provides real-time measurements of various air pollutants:

•	PM2.5: Fine particulate matter (µg/m³)

•	PM10: Particulate matter (µg/m³)

•	O3: Ozone (µg/m³)

•	NO2: Nitrogen Dioxide (ppm)

•	SO2: Sulfur Dioxide (ppm)

•	CO: Carbon Monoxide (ppm)

**Location-based data:**

•	Latitude, Longitude

•	City, District, Country


## Data Sources

•	[Air Pollution Data Source](https://www.airkorea.or.kr/web/)

•[	Data Set Source](https://www.kaggle.com/datasets/calebreigada/south-korean-pollution)

## Grafana Dashboard Overview

The dashboard includes:

1.	Real-Time Air Quality Index (AQI) Monitoring: Interactive visualizations of PM2.5, PM10, and other pollutants.
	
2.	Weather Correlation: Heatmaps and scatter plots showing the relationship between weather parameters and pollution levels.
	
3.	Geospatial Maps: Geographical distribution of pollution metrics across South Korea.
	
4.	Time-Series Analysis: Line and area charts tracking temporal trends in pollution.



For viewing dashboard in Grafana [visit here](http://localhost:3000/d/dca8a887-e6a2-4af8-bb98-a34198fda911/south-korea-air-quality-tracker?orgId=1&from=1732431390722&to=1732483978626)


![Dashboard-01](https://github.com/user-attachments/assets/67499b74-cd57-4444-908e-2666433c44bc)


![Dashboard-02](https://github.com/user-attachments/assets/657c516c-79a3-4c9d-b8f6-1b3257484a94)


## Managerial Insights

**1:** **Pollutant Contribution by City**

![Chart-08](https://github.com/user-attachments/assets/cbd04f37-5a3a-4b71-9814-65ed3f951f77)

**Insights:**

•	The chart indicates pollutant distribution (PM2.5, PM10, CO, NO2, SO2, and Ozone) across multiple cities.

•	It suggests that certain pollutants, such as PM2.5 and PM10, are more prominent in specific locations like Bangsan_Myeon.

•	This data can help identify cities with higher pollution levels and their dominant pollutant types.

**Actionable Insights:**

1.	Focus on targeted interventions in cities with high pollution levels, such as implementing stricter industrial emission controls or promoting cleaner transportation.
	
2.	Use this data to prioritize resources, such as air purifiers or public advisories, in regions with the most significant pollution contribution.
	
3.	Conduct further investigations to determine the sources of specific pollutants and develop city-specific mitigation strategies.

**2: Maximum and Minimum PM2.5 Levels in the Past Month**

![Chart-01](https://github.com/user-attachments/assets/390e613d-4d72-4069-b394-383ad33a178c)

**Insights:**

•	The chart reveals a maximum PM2.5 level of 206 µg/m³, which is alarmingly high and poses severe health risks.

•	A minimum value of 0 µg/m³ indicates that there are areas or periods with clean air, which can be further explored for best practices.

**Actionable Insights:**

1.	The high PM2.5 level necessitates immediate action in the form of public health advisories, especially for sensitive groups like the elderly and children.
	
2.	Investigate best practices in areas with low pollution levels and replicate them in other regions.
	
3.	Utilize this data to forecast peak pollution periods and issue timely warnings or recommend preventive measures.

**3: Air Quality Levels Over Time by City**

![Chart-03](https://github.com/user-attachments/assets/0d373775-8792-4b61-a739-730759b6b24c)

**Insights:**

•	Cities like Gwanak_Gu (67.7 µg/m³) and Cheongnim_Dong (65.9 µg/m³) show relatively higher average PM2.5 levels compared to Bangsan_Myeon (20.5 µg/m³).

•	Regional disparities in pollution levels indicate potential differences in industrial activity, traffic density, or weather conditions.

**Actionable Insights:**

1.	Focus on high-risk cities for implementing pollution control measures, such as regulating emissions and promoting public transportation.
	
2.	Use the data to analyze temporal patterns and evaluate whether pollution levels are due to seasonal effects or human activities.
	
3.	Engage local governments to develop tailored action plans addressing the primary sources of pollution in the most affected cities.

**4: Daily average of all pollutants**

![Chart-02](https://github.com/user-attachments/assets/e03e18fa-105c-4cc0-845d-28bbc81a314c)

**Insights**

•	High levels of PM2.5 and PM10 are the primary concern.

•	Ozone levels are currently within acceptable limits but have the potential to rise.

•	Levels of NO2, SO2, and CO are relatively low.


**Actionable Insights:**

•	Prioritize reducing PM2.5 and PM10 emissions from vehicles, industries, and construction sites.

•	Monitor ozone precursors and take action to reduce them during favorable conditions.

•	Raise public awareness about air quality and issue health advisories when necessary.

**5. Pollutant Comparison (PM2.5 vs. PM10)**

![Chart-15](https://github.com/user-attachments/assets/8b8b05ca-3518-4f55-ba56-74993ad18f28)

**Insight:**

•	PM2.5 levels are generally higher than PM10 across cities, indicating a significant presence of fine particulate matter that poses severe health risks. 

•	The results suggest the need for targeted measures to reduce PM2.5 levels, such as regulating construction activities and promoting air purifiers in urban households.

**6. SO2 levels by time of the day**

![Chart-04](https://github.com/user-attachments/assets/432e2725-f306-4b97-9695-d69f6afa6247)

**Insights**

SO2 levels show a distinct daily pattern with peaks around 14:00 and 22:00.

**Actionable Insights:**

1.	Investigate peak sources: Analyze emissions from industrial activities, power plants, and transportation during these peak hours.

2.	Implement targeted measures: Consider implementing measures like reduced industrial activity or traffic restrictions during peak SO2 periods.

3.	Monitor continuously: Continue monitoring SO2 levels to identify any changes in trends or patterns.

**7. Top 5 districts with highest PM10 levels**

![Chart-05](https://github.com/user-attachments/assets/a6c94f75-7c35-440b-9c5d-9327118292a9)

**Insights**

PM10 levels show significant variation across different districts in South Korea, with Seoul, Seo-Gu, Paju-Si, Jeonnam, and Jeonbuk having the highest levels.

**Actionable Insights:**

1.	Targeted monitoring: Implement focused monitoring in these high PM10 areas to identify specific sources and pollution hotspots.
	
2.	Source reduction: Investigate emission sources in these districts, such as industrial activities, construction sites, and traffic, and implement measures to reduce them.
	
3.	Public awareness: Inform residents in these districts about the health risks associated with high PM10 levels and advise them to take precautions.

**8. Comparison of AQI and PM2.5 over time**

![Chart-06](https://github.com/user-attachments/assets/407f7a45-c326-4efc-ba36-6204dff7eb54)

**Insights**

The average Air Quality Index (AQI) and PM2.5 levels are moderate, indicating acceptable air quality.

**Actionable Insights:**

1.	Continue monitoring: Maintain regular monitoring of air quality to detect any changes in trends or patterns.
	
2.	Public awareness: Keep the public informed about air quality conditions and provide recommendations for health protection during periods of poor air quality.
	
3.	Long-term planning: Develop and implement long-term strategies to improve air quality, including reducing emissions from transportation, industry, and other sources.

**9. Top 5 cities with the highest PM2.5 levels**

![Chart-07](https://github.com/user-attachments/assets/b5c90c3d-ee04-432b-bff6-a9a5eb44f9f7)

**Insights**

PM2.5 levels are significantly higher in certain cities, with Gwanak-Gu, Hyeoksin-Dong, and Bangsan-Myeon having the highest contributions.

**Actionable Insights:**

1.	Focus on hotspot cities: Implement targeted measures in these cities to reduce PM2.5 emissions.
	
2.	Identify pollution sources: Conduct detailed studies to identify the specific sources of PM2.5 in these cities, such as traffic, industrial activities, and residential heating.
	
3.	Implement control measures: Implement appropriate control measures, such as emission standards, traffic management, and cleaner fuel use.

**10. Heat map of pollutant concentration across districts**

![Chart-09](https://github.com/user-attachments/assets/e80635fa-8aed-42c5-a892-720499ea169e)

**Insights**

PM2.5 levels vary significantly across different districts in South Korea, with Seoul, Gyeonggi-do, and Jeonbuk having the highest concentrations.

**Actionable Insights:**

1.	Targeted monitoring: Implement focused monitoring in high PM2.5 areas to identify specific sources and pollution hotspots.
	
2.	Source reduction: Investigate emission sources in these districts, such as traffic, industrial activities, and residential heating, and implement measures to reduce them.
	
3.	Public awareness: Inform residents in these districts about the health risks associated with high PM2.5 levels and advise them to take precautions.

**11. Ozone levels above threshold**

![Chart-10](https://github.com/user-attachments/assets/9c75b662-a83f-44ae-a83f-e5ac5b9e607c)

**Insights**

Ozone levels exceeding the threshold are significantly higher in Geumchon-Dong, followed by Gwanak-Gu.

**Actionable Insights:**

1.	Targeted monitoring: Implement focused monitoring in these areas to identify specific sources of ozone precursors.
	
2.	Source reduction: Investigate emission sources, such as vehicle traffic and industrial activities, and implement measures to reduce nitrogen oxides and volatile organic compounds.
	
3.	Public awareness: Inform residents in these areas about the health risks associated with elevated ozone levels and advise them to take precautions.

