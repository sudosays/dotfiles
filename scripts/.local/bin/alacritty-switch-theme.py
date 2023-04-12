#!/usr/bin/python

import os
import re

ALACRITTY_CONFIG_PATH = os.path.expanduser("~/.config/alacritty/alacritty.yml")
THEME_PATH = os.path.expanduser("~/.config/alacritty/themes/")

theme_list = [f for f in os.listdir(THEME_PATH)]

print("Available themes:")
for i, t in enumerate(theme_list):
    print("{}: {}".format(i,t))

selected_theme: int = eval(input("Enter a selection: "))

config_data = ""

with open(ALACRITTY_CONFIG_PATH, 'r') as conf_file:
    config_data = conf_file.read()

with open(ALACRITTY_CONFIG_PATH, 'w') as conf_file:
    conf_file.write(re.sub(r"(themes\/).+", r"\1"+theme_list[selected_theme], config_data))
