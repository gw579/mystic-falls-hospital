#!/bin/bash


#declare a variable hospID' with value inputted by user
echo Hospital ID?
read hospID

#confirm User has selected the intended hospital
echo You have selected hospital with ID number $hospID
echo This corresponds to 
mysql -u hds -p -D mystic -e "SELECT HospitalName FROM hospitals WHERE HospitalID = $hospID"

#Show all doctors at given hospital
mysql -u hds -p -D mystic -e "SELECT * FROM doctors WHERE HospitalID = $hospID"
