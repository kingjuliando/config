#!/bin/bash

# Title:	.bin/batground.sh
# By: 		kingjuliando
# Tag Added:	02-07-2020
# Description:  Adds battery percentage and status to background image

# Wallpaper Folder
  fld='/home/ju/Pictures/wallpapers/'
# Remove .jpg File Extension From Variable
  fnm=$(echo ${1} | sed -e 's/.jpg//g')
  
# Battery Percentage and Icon
  batperc=$(echo $(cat /sys/class/power_supply/BAT0/capacity))
  batstat=$(echo $(cat /sys/class/power_supply/BAT0/status))
  if [[ ${batstat} = 'Discharging' ]] ; then
    if (( ${batperc}>0 && ${batperc}<10 )) ; then
        baticon=" "
    elif (( ${batperc}>11 && ${batperc}<30 )) ; then
        baticon=" "
    elif (( ${batperc}>31 && ${batperc}<60 )) ; then
        baticon=" "
    elif (( ${batperc}>61 && ${batperc}<80 )) ; then
        baticon=" "
    elif (( ${batperc}>81 && ${batperc}<100 )) ; then
        baticon=" "
    else
        baticon=""
    fi
  else 
    baticon=" "
  fi

# Add Text and Save File
  convert ${fld}${fnm}.jpg -pointsize 300 \
    -draw "font FontAwesome gravity center fill white text -250,0 '${baticon}' font Roboto-Mono gravity center fill white text 0,0 '   ${batperc}%'" ${HOME}/.bin/${fnm}-bat.jpg

# Set BG with Nitrogen
  nitrogen --save --set-zoom-fill ${HOME}/.bin/${fnm}-bat.jpg

