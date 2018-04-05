#!/bin/bash 

##Grecia Gonzalez
##User inputs apartment number and grep searches data file for the apt
## found is put into findtwo.bash and prints the information
read -p "Enter apartment number" apt 

found=$(grep -l "$apt" Data/*)

if [ -r "$found" ]; then
    bash findtwo.bash < $found
else
    echo "Error: apartment number not found"
fi

