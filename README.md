<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://www.exeter.ac.uk/v8media/recruitmentsites/images/homepage/uoe-logo.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://www.exeter.ac.uk/v8media/recruitmentsites/images/homepage/uoe-logo.svg">
  <img alt="Exeter university logo." src="https://www.exeter.ac.uk/v8media/recruitmentsites/images/homepage/uoe-logo.svg">
</picture>

# Computational Group 4 Project 👩‍💻🧑‍💻

---
>The group project part of Computational_skill module in MSc Health Data Science, University of Exeter

<details open>
<summary> Group's members </summary>

| No.  | Name                    |    Program                          | Student ID |
|-----:|-------------------------|-------------------------------------|-|
|     1|Hanafi Najeebah          |MSc Health Data Science              | |
|     2|Jaroenphol Nuttaporn     |MSc Health Data Science              | |
|     3|Rushanai Lerssupsin      |Genomic Medicine (Data Science)      | |
|     4|Salem Farah Salem        |Genomic Medicine (Data Science)      | |
|     5|Walker Tabitha           |MSc Health Data Science              | |

</details>


## Objectives

This project builds a relational hospital database in MySQL. our aims were to:

1. Plan an Entity Relationship Diagram (ERD) to show how the tables connect and to visualise the overall database(hospital_db)
2. Create tables for hospitals, doctors, patients,specialties, medications, prescriptions, diseases, treatments, appointments, lab tests and lab results
3. Fill the tables with realistic AI generated data: 40 hospitals, 100 doctors, 600 patients, 30 medications and 500 prescriptions from the past two years
4. Link the tables with primary and foreign keys, so each doctor works at one hospital and each patient is registered with one doctor
5. Connect all the tables into one database
6. Write SQL queries that explore the finished database and answer the questions in the brief
7.  Export the finished database as a .sql file with mysqldump
8.   Work as a team through a shared GitHub repository, using branches and pull requests to add our tables, queries and README


## Database structure

The database `hospital_db` has 11 tables:

| Table | What it stores | Columns |
|---|---|---|
| Hospitals (40) | Hospital details | hospital_id (PK), name, address, number_of_beds, hospital_type, accreditation_year, emergency_services |
| Doctors (100) | Doctors and where they work | doctor_id (PK), name, address, DOB, hospital_id (FK), specialty_id (FK) |
| Patients (600) | Patients and their doctor | patient_id (PK), name, address, DOB, doctor_id (FK) |
| Specialties | Medical specialties | specialty_id (PK), name |
| Medications (30) | Medication names | med_id (PK), name |
| Prescriptions (500) | Medications prescribed to patients | prescript_id (PK), date, doctor_id (FK), med_id (FK), patient_id (FK) |
| Diseases | Diseases, their specialty and treatment options | disease_id (PK), name, specialty_id (FK), tx_options |
| Treatments | Which medications treat which diseases | treat_id (PK), disease_id (FK), med_id (FK) |
| Appointments | Scheduled appointments | appoint_id (PK), date, time, patient_id (FK), doctor_id (FK) |
| Lab_tests | Types of lab test | test_id (PK), name |
| Lab_results | Lab test results | result_id (PK), date, test_id (FK), result, patient_id (FK), doctor_id (FK) |

PK = primary key (unique ID for each row). FK = foreign key (links to another table).
