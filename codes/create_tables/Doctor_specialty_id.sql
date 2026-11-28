ALTER TABLE Doctors
    ADD COLUMN specialty_id INT UNSIGNED NULL,
    ADD CONSTRAINT fk_doctors_specialty
        FOREIGN KEY (specialty_id)
        REFERENCES Specialties (specialty_id);

UPDATE Doctors
SET specialty_id = (
    SELECT specialty_id
    FROM Specialties
    ORDER BY RAND()
    LIMIT 1
)
WHERE specialty_id IS NULL
  AND EXISTS (SELECT 1 FROM Specialties)
ORDER BY RAND()
LIMIT 50;
