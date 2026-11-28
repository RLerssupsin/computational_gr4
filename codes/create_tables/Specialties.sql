CREATE TABLE Specialties (
    specialty_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250) NOT NULL UNIQUE
);

INSERT INTO Specialties (name) VALUES
    ('Allergy and Immunology'),
    ('Cardiology'),
    ('Clinical Oncology'),
    ('Dermatology'),
    ('Endocrinology and Diabetes Mellitus'),
    ('Gastroenterology'),
    ('Genitourinary Medicine'),
    ('Geriatric Medicine'),
    ('Haematology'),
    ('Infectious Diseases'),
    ('Nephrology'),
    ('Neurology'),
    ('Neurosurgery'),
    ('Obstetrics and Gynaecology'),
    ('Ophthalmology'),
    ('Otolaryngology'),
    ('Psychiatry'),
    ('Respiratory Medicine'),
    ('Rheumatology'),
    ('Trauma and Orthopaedic Surgery'),
    ('Urology'),
    ('Vascular Surgery')
ON DUPLICATE KEY UPDATE specialty_id = Specialties.specialty_id;
