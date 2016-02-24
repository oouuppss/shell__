#!/bin/bash
[[ $(xset -q| awk '/^  DPMS/{ print $3}') = "Enabled" ]] && {
		xset s off;
		xset -dpms;
		echo "Screen saver and dpms disabled";
		exit 0;
	}
xset s on
xset dpms
echo "Screen saver and dpms enabled";
exit 0
