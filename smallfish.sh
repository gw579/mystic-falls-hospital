#!/bin/bash

#read query into variable
smallfishquery="
#query to create a view to find the biggest hospital
drop view biggest_hospital;
create view biggest_hospital AS select HospitalID, HospitalSize from hospitals ORDER BY HospitalSize DESC LIMIT 1; 
#query to find the doctors at that hospital
select DoctorName from doctors INNER JOIN biggest_hospital ON doctors.HospitalID=biggest_hospital.HospitalID; 
"

#run the query
mysql -u hds -p -D mystic -e "$smallfishquery"

