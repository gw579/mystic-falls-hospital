#!/bin/bash

#Ask User which doctor's prescriptions they are looking for, read input into a variable 'docID'
echo Doctor ID?
read docID

#If ID entered belongs to a doctor, that doctor's prescriptions are shown. Otherwise, user is told their input is invalid.
if [ $docID -lt 1 ]; then
 echo "Invalid ID"
elif [ $docID -gt 100 ]; then
 echo "Invalid ID"
else
mysql -u hds -p -D mystic -e "SELECT * FROM prescriptions WHERE DoctorID = $docID ORDER BY PatientID"
fi
