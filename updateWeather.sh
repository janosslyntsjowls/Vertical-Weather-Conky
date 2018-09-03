#!/bin/bash

curl -s http://api.wunderground.com/api/[API KEY]/forecast/q/[ZIP CODE].xml > /home/$USER/forecast.xml
curl -s http://api.wunderground.com/api/[API KEY]/conditions/q/[ZIP CODE].xml > /home/$USER/current.xml
curl -s http://api.wunderground.com/api/[API KEY]/hourly/q/[ZIP CODE].xml > /home/$USER/hourly.xml
curl -s http://api.wunderground.com/api/[API KEY]/astronomy/q/[ZIP CODE].xml > /home/$USER/astronomy.xml

#Moon Phases
a=$(xmlstarlet sel -t -v "response/moon_phase/ageOfMoon" /home/$USER/astronomy.xml)
b="/home/$USER/Pictures/Icons/MoonIcons/moon$a.png"
cp $b /home/$USER/Pictures/Icons/MoonIcons/currentMoonPhase.png

#Current
a=$(xmlstarlet sel -t -v "response/current_observation/weather" /home/$USER/current.xml)
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/currentConditions.png

#Today
a=$(xmlstarlet sel -t -v "response/forecast/simpleforecast/forecastdays/forecastday/conditions" /home/$USER/forecast.xml | sed -n '1p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/dailyConditions_1.png

#Tomorrow
a=$(xmlstarlet sel -t -v "response/forecast/simpleforecast/forecastdays/forecastday/conditions" /home/$USER/forecast.xml | sed -n '2p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/dailyConditions_2.png

#Day after
a=$(xmlstarlet sel -t -v "response/forecast/simpleforecast/forecastdays/forecastday/conditions" /home/$USER/forecast.xml | sed -n '3p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/dailyConditions_3.png

#Hourly 1
a=$(xmlstarlet sel -t -v "response/hourly_forecast/forecast/wx" /home/$USER/hourly.xml | sed -n '1p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/hourly_1.png

#Hourly 2
a=$(xmlstarlet sel -t -v "response/hourly_forecast/forecast/wx" /home/$USER/hourly.xml | sed -n '2p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/hourly_2.png

#Hourly 3
a=$(xmlstarlet sel -t -v "response/hourly_forecast/forecast/wx" /home/$USER/hourly.xml | sed -n '3p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/hourly_3.png

#Hourly 4
a=$(xmlstarlet sel -t -v "response/hourly_forecast/forecast/wx" /home/$USER/hourly.xml | sed -n '4p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/hourly_4.png

#Hourly 5
a=$(xmlstarlet sel -t -v "response/hourly_forecast/forecast/wx" /home/$USER/hourly.xml | sed -n '5p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/hourly_5.png

#Hourly 6
a=$(xmlstarlet sel -t -v "response/hourly_forecast/forecast/wx" /home/$USER/hourly.xml | sed -n '6p')
a=${a//" "}
b="/home/$USER/Pictures/Icons/WeatherIcons/$a.png"
cp $b /home/$USER/Pictures/Icons/WeatherIcons/hourly_6.png
