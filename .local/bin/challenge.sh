#!/bin/sh
# Compute the number of days from startdate to today.

startdate="2022-09-19"
start=$(date +%s --date $startdate)
now=$(date +%s)

difference=$(expr $now - $start)
difference_days=$(expr $difference / 3600 / 24)

echo "$difference_days days since $startdate."
