# South-Korea-Air-Quality-Tracker-Dashboard-via-Grafana-powered-by-Influxdb

## Overview

Air pollution is a critical environmental issue in South Korea, affecting the health of its citizens. This project provides a data visualization solution for monitoring and analyzing air pollution and weather-related factors. Using Grafana with InfluxDB as the backend, a real-time dashboard has been built to help users visualize pollution data alongside weather conditions.

## Dataset Description
 
### Pollution Data 
Date: Date of measurement.
PM2.5: Fine particulate matter (PM2.5) in µg/m³.
PM10: Fine particulate matter (PM10) in µg/m³.
O3: Ozone (O₃) in µg/m³.
NO2: Nitrogen Dioxide (NO₂) in ppm.
SO2: Sulfur Dioxide (SO₂) in ppm.
CO: Carbon Monoxide (CO) in ppm.
Latitude (Lat): Measurement latitude.
Longitude (Long): Measurement longitude.
City: Measurement city.
District: Measurement district.
Country: Measurement country.

### Weather Data

Station Details: Station number, name, latitude, longitude, and elevation.

Observation Date: Date of weather observation.

Weather Parameters: Liquid precipitation, snow depth, dew, extreme air temperature, atmospheric pressure, sea level pressure, temperature, visibility, and wind.

### Dashboard Features

Real-time visualization of pollution metrics such as PM2.5, PM10, and gas concentrations.

Integration of weather data to identify correlations with pollution.

Geographic mapping of pollution hotspots using latitude and longitude.

Temporal trends of air pollution and weather patterns.

### Links

[Dataset Source](https://www.kaggle.com/datasets/calebreigada/south-korean-pollution)

[Grafana Dashboard](http://localhost:3000/d/dca8a887-e6a2-4af8-bb98-a34198fda911/south-korea-air-quality-tracker?orgId=1&from=1732431390722&to=1732483978626)
