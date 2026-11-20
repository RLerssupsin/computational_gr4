USE hospital_db;

CREATE TABLE Appointments ( 
    appoint_id INT AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NOT NULL,
    `time` TIME NOT NULL, 
    patient_id INT NOT NULL, 
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) 
); 

DELIMITER //

CREATE PROCEDURE insert_random_appointments()
BEGIN
    DECLARE v_count INT DEFAULT 0;

    WHILE v_count < 600 DO
        INSERT INTO appointments (`date`, `time`, patient_id)
        SELECT
            DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
            SEC_TO_TIME(9 * 3600 + FLOOR(RAND() * 32) * 900),
            patient_id
        FROM Patients
        ORDER BY RAND()
        LIMIT 1;

        SET v_count = v_count + 1;
    END WHILE;
END //

DELIMITER ;

CALL insert_random_appointments();


