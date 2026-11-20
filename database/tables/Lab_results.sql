USE hospital_db;

CREATE TABLE Lab_results (
result_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
test_id INT NOT NULL,
patient_id INT UNSIGNED NOT NULL,
'date' DATE,
result VARCHAR(255),
doctor_id UNSIGNED INT NOT NULL,

CONSTRAINT fk_labresults_test
FOREIGN KEY (test_id) REFERENCES Lab_tests(test_id),

CONSTRAINT fk_Leb_results_patient_doctor
    FOREIGN KEY (patient_id, doctor_id)
    REFERENCES Patients (patient_id, doctor_id)
);
