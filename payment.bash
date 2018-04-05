#!/bin/bash

##Grecia Gonzalez
##allows user to update customer payment file
read -p "Enter email:" email
read -p "Enter payment amount:" payment

result=$(find . -name $email)

if [ -r "$result" ]; then
    source paymenttwo.bash < $result
else
    echo "Error: customer not found"
fi
