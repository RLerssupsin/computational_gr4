USE hospital_db;

CREATE TABLE Diseases (
    disease_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR (255) NOT NULL,
    specialty_id INT UNSIGNED, 
    specialty VARCHAR (255),
    treatment_guide VARCHAR (255),
    FOREIGN KEY (specialty_id) REFERENCES Specialties(specialty_id) 
        
); 

LOAD DATA LOCAL INFILE 'Diseases.txt'
INTO TABLE Diseases
CHARACTER SET utf8mb4
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(name, specialty, treatment_guide);

UPDATE Diseases AS di 
JOIN Specialties AS sp 
    ON sp.name = di.specialty
SET di.specialty_id = sp.specialty_id
WHERE di.specialty_id IS NULL; 




