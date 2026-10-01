#!/bin/bash

#query to create a view showing top prescriber's Doctor ID (and drop the view if it had already been made, thereby allowing for updates)
busydocquery="
DROP VIEW top_prescribers;
CREATE VIEW top_prescribers AS
SELECT DoctorID, COUNT(DoctorID) AS NumberOfPrescriptions
FROM prescriptions
GROUP BY DoctorID
ORDER BY NumberOfPrescriptions DESC
LIMIT 1;
#query to find top prescriber's name
SELECT DoctorName from doctors
INNER JOIN top_prescribers
ON doctors.DoctorID=top_prescribers.DoctorID;
"
#run the queries in MySQL
mysql -u hds -p -D mystic -e "$busydocquery"
