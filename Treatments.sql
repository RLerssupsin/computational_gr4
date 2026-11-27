CREATE TABLE Treatments (
    treat_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    disease_id INT UNSIGNED NOT NULL,
    med_id INT UNSIGNED NOT NULL,

    UNIQUE (disease_id, med_id),
    FOREIGN KEY (disease_id) REFERENCES Diseases (disease_id),
    FOREIGN KEY (med_id) REFERENCES Medications (med_id)
);

INSERT INTO Treatments (disease_id, med_id)
SELECT di.disease_id, me.med_id
FROM Diseases AS di
JOIN Medications AS me
    ON FIND_IN_SET(me.name, di.tx_options) > 0;
