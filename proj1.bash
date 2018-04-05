#!/bin/bash

##Grecia Gonzalez
##Project 1 prompts user to do follow actions or gives error 
echo "Enter one of the following actions or press CTRL-D to exit."
 echo "C - create a customer file"
echo "P - accept a customer payment"
 echo "F - find customer by apartment number"
while read action; do
   
        case "$action" in
             [Cc]) bash CreateAction.bash;; # Run CreateAction.bash
             [Pp]) bash payment.bash;; # Run PaymentAction.bash
             [Ff]) bash Find.bash;; # Run FindAction.bash
             *)   echo -e "Error: invalid action value\n" # Redisplay action menu
                  exit 1;;
        esac
    echo "Enter one of the following actions or press CTRL-D to exit."
    echo "C - create a customer file"
    echo "P - accept a customer payment"
    echo "F - find customer by apartment number"
 done

