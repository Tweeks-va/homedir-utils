#!/bin/bash

if [ -e ./hbban ]; then
	echo found hbban.. setting up operational symlinks
else
	echo "ERROR: Run this in the same ~/bin/ dir as hbban..."
	exit 1
fi

chmod 755 ./hbban
ln -fs hbban hbban-baseline  	&&\
ln -fs hbban hbban-scan		&&\
ln -fs hbban hbban-compare	&&\
echo " DONE" &&\
echo " 1) Populate hbban.cfg with your SMS Phone# and API settings..." &&\
echo " 2) populate your root cronntab/scheduler to run the following jobs:" &&\
echo "## Monthly Baseline hbban (HID Binary Baseline Anomaly Notification) FAM Scans
23 0 1 * * /root/bin/hbban-baseline

## Daily hbban Scan
23 1 * * * /root/bin/hbban-scan

## Daily hbban Compare
23 2 * * * /root/bin/hbban-compare" 	&&\
exit 0

echo "ERROR"
exit 1



