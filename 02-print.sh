#!/bin/bash 

# Printing a message in screen can be done by two commands 
# 1. echo 
# 2. printf 

# We choose echo command because of user friendlyness, Yet it does all the job does by printf

# Syntax: echo Message 

echo Hello World

# In cases we need to print mutiple lines with single echo command, Print some tab spaces, Print some colors.

# All the above can be done with following esc sequences
# \n - New line 
# \t - New Tab 
# \e - New Color 

# Syntax: echo -e "Message"
## Note: To enable esc seq we need -e option in echo , Also the message has to be quoted, Prefreably double quotes.

echo -e "Line1\nLine2"
echo -e "Word1\t\t\tWord2"

# Coloured Syntax
# echo -e "\e[COLCODEmMessage"

## COLOR CODES
# Red         31
# Green       32
# Yellow      33
# Blue        34       
# Magenta     35
# Cyan        36

echo -e "\e[31mText in Red Color"
echo -e "\e[33mText in Yellow Color"

# We can increase the brightness and enable bold text using color code '1'
echo -e "\e[1;31mText in Red Color"
echo -e "\e[1;33mText in Yellow Color"
echo text in no color , but this gets prints in color 
# When the echo enables the color, It does not disable by default, We have to exclusively diable the enabled color. This is done by color code '0'

echo -e "\e[1;35mMessage in Color, But disable after ending\e[0m"
echo text in no color 

# https://misc.flogisoft.com/bash/tip_colors_and_formatting
