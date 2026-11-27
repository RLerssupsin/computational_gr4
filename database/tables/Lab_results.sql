USE hospital_db;

CREATE TABLE Lab_results (
    result_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    date DATE NOT NULL,
    test_id INT UNSIGNED NOT NULL,
    result VARCHAR(255) NOT NULL,
    patient_id INT UNSIGNED NOT NULL,
    doctor_id INT UNSIGNED NOT NULL,

    PRIMARY KEY (result_id),

    CONSTRAINT fk_labresults_test
        FOREIGN KEY (test_id) REFERENCES Lab_tests(test_id),

    CONSTRAINT fk_labresults_patient
        FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),

    CONSTRAINT fk_labresults_doctor
        FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

LOAD DATA LOCAL INFILE 'lab_results.txt'
INTO TABLE Lab_results
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(date, test_id, result, patient_id, doctor_id);
