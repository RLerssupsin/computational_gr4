USE hospital_db;

CREATE TABLE Appointments ( 
    appoint_id INT AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NOT NULL,
    `time` TIME NOT NULL, 
    patient_id INT UNSIGNED NOT NULL, 
    doctor_id INT UNSIGNED NOT NULL,
   
        FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
        FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
        UNIQUE (doctor_id, `date`, `time`) 
); 

LOAD DATA LOCAL INFILE 'appointments.txt' 
INTO TABLE Appointments
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(`date`, `time`, patient_id, doctor_id);



