#!/usr/bin/env bash
function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

run setxkbmap -layout "us,ru" -option "grp:alt_shift_toggle"
