#!/bin/bash


#declare a variable 'a' with value inputted by user
echo Hospital ID?
read hospID
echo You have selected hospital with ID number $hospID

mysql -u hds -p -D mystic -e "SELECT * FROM doctors WHERE HospitalID = $hospID"
