#!/usr/bin/python

import os

battery_dir = '/sys/class/power_supply/BAT0'

if os.path.exists(battery_dir):
    os.chdir(battery_dir)
    present = (int(open("present","r").read()) > 0)
    if present:
        status = open("status", "r").read().strip()
        charge = int(open("charge_now","r").read())
        max_charge = int(open("charge_full","r").read())
        print("{:.0f}% ({})".format((charge/max_charge)*100, status))
