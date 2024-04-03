#!/bin/bash

# Get the current date in dd/mm/yyyy format
current_date=$(date +"%d/%m/%Y")

# Get the user
user=$(whoami)

# Echo the greeting
echo "Hello $user, Today is: $current_date"

# Echo out current tasks via Task Warrior Package
echo "Here are your daily tasks:"
task list

#Add a sleep
sleep 1
