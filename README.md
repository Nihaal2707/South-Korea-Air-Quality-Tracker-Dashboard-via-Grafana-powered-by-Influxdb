# South Korea Air Pollution and Weather Data Dashboard

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

**Chart 1:** **Pollutant Contribution by City**

![Chart-08](https://github.com/user-attachments/assets/cbd04f37-5a3a-4b71-9814-65ed3f951f77)

**Insights:**

•	The chart indicates pollutant distribution (PM2.5, PM10, CO, NO2, SO2, and Ozone) across multiple cities.

•	It suggests that certain pollutants, such as PM2.5 and PM10, are more prominent in specific locations like Bangsan_Myeon.

•	This data can help identify cities with higher pollution levels and their dominant pollutant types.

**Actionable Insights:**

1.	Focus on targeted interventions in cities with high pollution levels, such as implementing stricter industrial emission controls or promoting cleaner transportation.
	
2.	Use this data to prioritize resources, such as air purifiers or public advisories, in regions with the most significant pollution contribution.
	
3.	Conduct further investigations to determine the sources of specific pollutants and develop city-specific mitigation strategies.

