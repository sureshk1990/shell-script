#!/bin/bash 

# Declare a function 

SAMPLE() {
  a=100
  echo I am a function  
  echo "Value of a in Function = $a"
  b=20
  echo "First Argument in Function = $1"
}

## Main Program

## Access a function 
a=10
SAMPLE xyz
b=200
echo "Value of b in Main Program = $b"

echo "First Argument in Main Program = $1"