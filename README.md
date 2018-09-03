Vertical Weather Conky

![Screenshot](https://github.com/theMountainThatOverrides/Vertical-Weather-Conky/blob/master/Screenshot.png)

You will need:

a. A Weather Underground API key. Unfortunately they are not offering them for free anymore. Any xml document that can be downloaded with curl can be used. The xml mappings in the xmlstarlet code snippets will just need to be changed. Open Weather Map has free xml weather updates for many cities.
b. Xmlstarlet xml file parser program. To get this: sudo apt install xmlstarlet
c. getMoonPhase.sh.
d. updateWeather.sh.
e. Crontab to create a cron job.
f. Three fonts, listed in the Fonts file.


HOW TO INSTALL

1. Place weather_vert.conf in your preferred folder.

    1.a. If you want to make this your default conky config file, copy and paste into your /etc/conky/ folder and rename it to conky.conf

    1.b. Open it, and Find "$USER" and replace it with your user name.

2. Download WeatherIcons and MoonIcons. If you do not already have a $USER/Pictures/Icons/ folder, create one and place these folders there. Otherwise, you can edit the code to point to their location.

3. If you do not already have a Scripts folder, create one in your home folder. In that folder, create a folder called Weather. Place updateWeather.sh and getMoonPhase.sh there (/home/$USER/Scripts/Weather).

    3.a. Open updateWeather.sh. Find [API KEY] and replace it with your Wunderground API key.

    3.b. Find [ZIP CODE] and replace it with your 5 digit zip code. Save the file.

    3.c. Open a terminal and enter these two commands to make them runnable: "chmod +x updateWeather.sh" and "chmod +x getMoonPhase.sh" without the quotes.

    3.d. Test updateWeather.sh, when you run it you will now have four XML files in your home folder.

    3.e. getMoonPhase.sh should now tell you the current moon phase.

4. Create a cron job to update the weather every half an hour.

    4.a. Open a terminal and enter this command: "crontab -e" without quotes.

    4.b. Scroll down to the bottom of the file and add this new line: "0,30 * * * * /[SCRIPT LOCATION]/updateWeather.sh" without quotes. Replace [Script Location] with wherever you are saving the scripts.

    4.c. Hit CTRL+X to close crontab, and then "y" to save.

6. Run conky. Go to the folder with weather_verf.conf and type this command: "conky -q -c weather_vert.conf"

7. Use Weather Script Examples to see more values that can be added. 

8. If you are using a different API than Weather Underground, you will need to update all the mappings. In the conky and script files, update the part of the command line call that goes like "response/forecast/simpleforecast...". That is the XML mapping. Use your own from the top down here.

9. Learn more about the weather icons and the moon phase icons in their respective files.

