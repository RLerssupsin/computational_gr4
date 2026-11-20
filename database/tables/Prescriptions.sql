USE hospital_db;

CREATE TABLE Prescriptions (
prescript_id INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
'date' DATE NOT NULL,
doctor_id INT NOT NULL,
med_id INT UNSIGNED,
patient_id INT UNSIGNED,

PRIMARY KEY (prescript_id),

CONSTRAINT fk_prescriptions_doctor
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),

CONSTRAINT fk_prescriptions_medication
FOREIGN KEY (med_id) REFERENCES Medications(med_id),

CONSTRAINT fk_prescriptions_patient
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
