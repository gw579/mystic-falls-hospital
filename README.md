# Mystic Falls Hospital
Module 1 Assessment 1: Create a hospital database  

Student ID: 760089381

## 📋Tasks
☑️ Create GITHub repository, with READMe  

☑️ Create ERD   

☑️ Create tables in mysql and load files into them 

☑️ Create Bash scripts to run the queries as requested in Assessment brief

## 📂Repo contents  
| File Name | Description |
| --------- | ----------- |
| doctors.csv | list of doctors with name, DOB, address, role and hospital ID |
| patients.csv | list of patients with name, DOB, address, role and doctor ID |
| hospitals.csv | list of hospitals with name, address, size, type and accreditation status |
| prescriptions.csv | list of prescriptions with prescription ID, patient ID, doctor ID, medication and prescription date |
| mystic_db1.sql | database containing tables for all the above, related as per ERD |
| prescripbydoctor.sh | Bash script to show all prescriptions by a particular doctor, ordered by patient ID. Requires user to input doctor ID. |
| prescripbypatient.sh | Bash script to show all prescriptions for a particular patient, ordered by the prescription date. Requires user to input patient ID. |
| doctorsathospital.sh | Bash script to list all doctors at a particular hospital. Requires user to input Hospital ID, and reports name of hospital as confirmation of correct input. |
| newpatient.sh | Bash script to add a patient to the patients table, and confirm by showing that patient's data within the table |
| busiestdoc2.sh | Bash script to find the doctor who has signed the highest number of prescriptions |
| smallfish.sh | Bash script to show a list of the doctors working at the biggest hospital (i.e. the small fishes in the big pond!) |

## ❗Note
All the bash scripts will require the user to enter the MySQL password, sometimes repeatedly. 
I could have created a .cnf file to avoid this. However for the purposes of assessment, Module Tutors will need to be able to use the scripts, so I have kept it as-is. 
