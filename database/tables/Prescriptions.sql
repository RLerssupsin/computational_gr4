USE hospital_db;

CREATE TABLE Prescriptions (
    prescript_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NOT NULL,
    doctor_id INT UNSIGNED NOT NULL,
    med_id INT UNSIGNED NOT NULL,
    patient_id INT UNSIGNED NOT NULL,

    CONSTRAINT fk_prescriptions_doctors
        FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),

    CONSTRAINT fk_prescriptions_medication
        FOREIGN KEY (med_id) REFERENCES Medications(med_id),

    CONSTRAINT fk_prescriptions_patient
        FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

LOAD DATA LOCAL INFILE 'prescriptions.txt'
INTO TABLE Prescriptions
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(date, doctor_id, med_id, patient_id);
