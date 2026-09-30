#!/bin/bash

echo Doctor ID?
read docID
if [ $docID -lt 1 ]; then
 echo "Invalid ID"
elif [ $docID -gt 100 ]; then
 echo "Invalid ID"
else
mysql -u hds -p -D mystic -e "SELECT * FROM prescriptions WHERE DoctorID = $docID ORDER BY PatientID"
fi
