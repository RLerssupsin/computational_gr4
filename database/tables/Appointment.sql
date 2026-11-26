USE hospital_db;

CREATE TABLE Appointments ( 
    appoint_id INT AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NOT NULL,
    `time` TIME NOT NULL, 
    patient_id INT UNSIGNED NOT NULL, 
    doctor_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_appointment_patient_doctor
        FOREIGN KEY (patient_id, doctor_id) REFERENCES Patients(patient_id, doctor_id),
    CONSTRAINT uq_doctor_slot 
        UNIQUE (doctor_id, `date`, `time`) 
); 

DROP PROCEDURE IF EXISTS insert_random_appointments; 

DELIMITER // 

CREATE PROCEDURE insert_random_appointments()
BEGIN
    DECLARE v_count INT DEFAULT 0; 
    DECLARE v_date DATE;
    DECLARE v_time TIME;
    DECLARE v_patient_id INT UNSIGNED; 
    DECLARE v_doctor_id INT UNSIGNED; 
    WHILE v_count < 600 DO 
        
        -- Generate a random date that falls on Monday to Friday. 
        REPEAT 
            SET v_date = DATE_ADD(
                CURDATE(), INTERVAL FLOOR(RAND()*365) DAY
            );
        UNTIL WEEKDAY(v_date) < 5
        END REPEAT; 

        -- Select a 15 minute time slot between 09:00 and 17:00 
        SET v_time = SEC_TO_TIME( 9*3600 + FLOOR(RAND()*32)*900);

        -- Select a patient and their assigned doctor from the same row. 
        SELECT patient_id, doctor_id 
        INTO v_patient_id, v_doctor_id 
        FROM Patients 
        WHERE doctor_id IS NOT NULL 
        ORDER BY RAND()
        LIMIT 1; 

        -- Insert only if doctor has no appointment in this slot. 
        IF NOT EXISTS(
            SELECT 1 
            FROM Appointments 
            WHERE doctor_id = v_doctor_id 
            AND `date` = v_date
            AND `time` = v_time 
        ) THEN 
            INSERT INTO Appointments (`date`, `time`, patient_id, doctor_id)
            VALUES (v_date, v_time, v_patient_id, v_doctor_id);

            SET v_count = v_count+1; 
        END IF;
    END WHILE;
END // 
DELIMITER ; 

CALL insert_random_appointments();



