#!/bin/bash
cd "$(dirname "$0")"

if [[ -n $(xmodmap -pke | grep 'keycode  38 = Home') ]]
then 
	xmodmap xmodmap_default
else
	xmodmap xmodmap_navigate
fi

xdotool key super+shift+m
