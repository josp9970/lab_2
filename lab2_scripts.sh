#!/bin/bash
# Author : Your Name
# Date: 1/1/2019
# Script follows here:
echo "Enter a filename "
read filePath

echo "Enter a regex command"
read command

# count the number of phone numbers
phone="[0-9]\{3\}.[0-9]\{3\}.[0-9]\{4\}"
grep -c $phone regex_practice.txt

# emails="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"

# count the number of emails
emails="@"
grep -c $emails regex_practice.txt

# list 303 numbers and store in phone_results.txt
area="303-"
grep $area regex_practice.txt >> phone_results.txt


# list emails with geocities into email_results.txt
prov="@geocities.com"
grep $prov regex_practice.txt >> email_results.txt

# list regex matches into command_results.txt
grep $command regex_practice.txt >> command_results.txt
