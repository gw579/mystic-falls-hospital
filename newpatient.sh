#!/bin/bash

#Obtain user input
echo "Name?"
read ptnm
echo "Date of birth? Please use YYYY-MM-DD"
read ptdob
echo "Address?"
read ptadd

#Obtain a random doctor ID
randdoc=$((1 + $RANDOM % 100))

#Define the mysql query
querynewpatient="USE mystic;
INSERT INTO patients(PatientName, PatientDOB, PatientAddress, PatientRole, DoctorID) VALUES ('$ptnm', '$ptdob', '$ptadd', 'Patient', '$randdoc');
SELECT * FROM patients WHERE PatientName = '$ptnm';"

#enter the MySQL and run the query to add a patient
mysql -u hds -p -e "$querynewpatient"

#Note - this code leaves database open to SQL Injection. Google tells me the more robust method would be to use prepared statements
#I look forward to learning how to do this.

