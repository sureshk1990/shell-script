#!/usr/bin/bash
#ls 
#cat /etc/*release

# Any line start with '#' is treated as comment and it will ignore by the interpreter 
# Printing a message in screen can be done by two commands
# 1. echo
# 2. printf
# we choose echo command because of user frindlyness , yes it does all the jobs does by ptintf
# syntax: echo message

echo "hello World"

# In cases we need to print multiple lines with single echo command, print some tab , space, print some colors
# All the above can be done with following esc sequencies 
# \n ---> New Line
# \t ---> New Tab
# \e  ---> New color
# systax : echo -e "message"
## Note: To enable esc sequnsess we need -e option  in echo, also the message has to be quoted , prefereabley double codes

echo -e "Line1\nLine2"
echo -e "word1\tword2"

# coloured syntax
# echo -e "\e(COLCODEmessage"

## COLOR CODES
# Red     31
# Green   32
# Yellow  33
# Blue    34
# Magenta 35
# Cyan    36


echo -e "\e[31mtext in red color"
echo -e "\e[33mtext in Yellow color"

# We can increase the brightness and enable the bold text using color code "1"

echo -e "\e[1;31mtext in red color"
echo -e "\e[1;33mtext in Yellow color"

# when the echo enable the color It does not disabled by the default , we have to exclusively disable the enabled color.
this is done by color code "0"

echo -e "\e[1:35mMessage in color, but disable after ending\e[0m"

echo text in no color








