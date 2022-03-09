#!/bin/sh

# Loop through all attached batteries.
for battery in /sys/class/power_supply/BAT?
do
    # Get remaining capacity and charge status.
    capacity=$(cat "$battery"/capacity 2>/dev/null) || break
    capacity_label=$(expr $capacity / 10)
    status=$(cat "$battery"/status)

    # Get icon representing status and capacity.
    if [ $status = "Discharging" ]; then
        case "$capacity_label" in
            "0") icon="" ;;
            "1") icon="" ;;
            "2") icon="" ;;
            "3") icon="" ;;
            "4") icon="" ;;
            "5") icon="" ;;
            "6") icon="" ;;
            "7") icon="" ;;
            "8") icon="" ;;
            "9") icon="" ;;
            "10") icon="" ;;
        esac
    elif [ $status = "Charging" ]; then
        case "$capacity_label" in
            "0") icon="" ;;
            "1") icon="" ;;
            "2") icon="" ;;
            "3") icon="" ;;
            "4") icon="" ;;
            "5") icon="" ;;
            "6") icon="" ;;
            "7") icon="" ;;
            "8") icon="" ;;
            "9") icon="" ;;
            "10") icon="" ;;
        esac
    elif [ $status = "Not charging" ]; then
        icon="";
    elif [ $status = "Unknown" ]; then
        icon="";
    elif [ $status = "Full" ]; then
        icon="";
    fi

	printf "%s%d%%" "$icon " "$capacity"
done && printf "\\n"
