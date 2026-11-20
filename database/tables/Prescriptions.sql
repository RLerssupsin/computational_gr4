USE hospital_db;

CREATE TABLE Prescriptions (
prescript_id INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
'date' DATE NOT NULL,
doctor_id INT UNSIGNED NOT NULL,
med_id INT UNSIGNED,
patient_id INT UNSIGNED,

CONSTRAINT fk_prescriptions_medication
  FOREIGN KEY (med_id) REFERENCES Medications(med_id),

CONSTRAINT fk_prescription_patient_doctor
    FOREIGN KEY (patient_id, doctor_id)
    REFERENCES Patient (patient_id, doctor_id)
);
