USE hospital_db;

CREATE TABLE Lab_results (
result_id INT PRIMARY KEY,
test_id INT NOT NULL,
patient_id INT NOT NULL,
date DATE,
result VARCHAR(255),
doctor_id INT NOT NULL,

CONSTRAINT fk_labresults_test
FOREIGN KEY (test_id) REFERENCES Lab_tests(test_id),

CONSTRAINT fk_labresults_patient
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),

CONSTRAINT fk_labresults_doctor
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
