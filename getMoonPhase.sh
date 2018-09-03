#!/bin/bash

let a=$(xmlstarlet sel -t -v "response/moon_phase/ageOfMoon" /home/$USER/astronomy.xml)

if [ "$a" -eq "1" ]; then
    echo "New Moon"
elif [ "$a" -gt "1" ] && [ "$a" -lt "8" ]; then
    echo "Waxing Crescent"
elif [ "$a" -eq "8" ]; then
    echo "First Quarter"
elif [ "$a" -gt "8" ] && [ "$a" -lt "16" ]; then
    echo "Waxing Gibbous"
elif [ "$a" -eq "16" ]; then
    echo "Full Moon"
elif [ "$a" -gt "16" ] && [ "$a" -lt "23" ]; then
    echo "Waning Gibbous"
elif [ "$a" -eq "23" ]; then
    echo "Last Quarter"
elif [ "$a" -gt "23" ]; then
    echo "Waning Crescent"
fi
