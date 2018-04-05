#!/bin/bash

##Grecia Gonzalez
##reads payment file and updates new balance
read email firstname lastname
read apt monthlyrent accountbalance duedate

echo "$email $firstname $lastname" > $result 
echo "$apt $monthlyrent $(($accountbalance - $payment)) $duedate" >> $result


