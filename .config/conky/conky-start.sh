#!/bin/bash
killall conky
sleep 20 && conky -c ~/.config/conky/conky.conf
