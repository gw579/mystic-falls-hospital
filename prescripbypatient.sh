#!/bin/bash

#Ask user which patient's prescriptions they wish to retrieve
echo Patient ID?
read patID

#If input ID corresponds to a patient, show the prescriptions of that patient. Otherwise, tell the user their input was invalid.
if [ $patID -lt 101 ]; then
 echo "Invalid ID"
elif [ $patID -gt 700 ]; then
 echo "Invalid ID"
else
mysql -u hds -p -D mystic -e "SELECT * FROM prescriptions WHERE PatientID = $patID ORDER BY PrescriptionDate"
fi
