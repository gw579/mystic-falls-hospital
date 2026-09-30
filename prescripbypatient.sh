#!/bin/bash

echo Patient ID?
read patID
if [ $patID -lt 101 ]; then
 echo "Invalid ID"
elif [ $patID -gt 700 ]; then
 echo "Invalid ID"
else
mysql -u hds -p -D mystic -e "SELECT * FROM prescriptions WHERE PatientID = $patID ORDER BY PrescriptionDate"
fi
