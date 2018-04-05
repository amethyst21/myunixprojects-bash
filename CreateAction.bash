#!/bin/bash

##Grecia Gonzalez
##Creates new profiles in data
read -p "Email: " email
read -p "Full Name (First Last): " firstname lastname
read -p "Apt: APT-" apt
read -p "Monthly Rent Amount: $" monthlyrent
read -p "Next Due Date: " duedate
balance=0

# See if customer exists, look in Data directory
if [ -r "$email" ]; then 
        echo "Error: customer already exists"
            
#ELSE  Do nothing
else
                    
# Create Customer File
# echo "Creating Customer File..."
        echo "$email $firstname $lastname" > ./Data/$email # Redirect to file
        echo "$apt $monthlyrent $balance $duedate" >> ./Data/#i#$email # Append to file

        # echo completion
       # echo -e "\n------ New Customer ------"
      #  echo "$email $firstname $lastname"
       # echo -e "$apt $monthlyrent $balance $duedate\n"
fi
