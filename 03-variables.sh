#!/bin/bash 

# IF we assign a name to a set of data is called as variable 

# Plain Variable 
# Syntax: VAR=DATA

# Number type data
a=10
# Character type data 
b=xyz
# Boolean type data 
c=true 
# String type data
d=abc123 

# However shell will not consider that data, Shell always consider that as a string.

# If your data is having any special characters then use quotes, preferably double quotes.

x="1*2"

echo Value of a = $a 
echo Value of b = ${b}

#DATE="2021-09-01"
DATE=$(date +%F)
echo Welcome, Today date is $DATE 

ADD=$((1+3))
echo ADD = $ADD 

## Read write
a1=100 
a1=200 

echo Val of  ABC = ${ABC}


## Plain Variables , Value is single 
a2=10 

## List Variable, Variable holds multiple values , Values are list 
b2=(100 101.0 200 abc)

echo ${b2[0]}
echo ${b2[1]}

## Named Index, Map, Dictionary