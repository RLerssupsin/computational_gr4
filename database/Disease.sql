USE hospital_db;

CREATE TABLE Disease (
    disease_id INT PRIMARY KEY, 
    name VACHAR (255) NOT NULL, 
    med_id INT UNSIGNED, 
    doctor_id INT,
    FOREIGN KEY (med_id) REFERENCES Medications(med_id),
    FOREIGN KEY (doctor_id) REFERENCE Doctors(doctor_id)
); 

INSERT INTO Disease (disease_id, name, med_id) VALUES 
(1,  'Type 2 Diabetes', 1),
(2,  'Hypercholesterolaemia', 2),
(3,  'Hypertension', 3),
(4,  'Gastro-oesophageal Reflux Disease', 4),
(5,  'Asthma', 5),
(6,  'Hypothyroidism', 6),
(7,  'Depression', 7),
(8,  'Atrial Fibrillation', 8),
(9,  'Heart Failure', 9),
(10, 'Angina Pectoris', 10),
(11, 'Chronic Obstructive Pulmonary Disease', 11),
(12, 'Bacterial Infection', 12),
(13, 'Urinary Tract Infection', 13),
(14, 'Gout', 14),
(15, 'Osteoporosis', 15),
(16, 'Benign Prostatic Hyperplasia', 16),
(17, 'Migraine', 17),
(18, 'Epilepsy', 18),
(19, 'Parkinson''s Disease', 19),
(20, 'Alzheimer''s Disease', 20),
(21, 'Rheumatoid Arthritis', 21),
(22, 'Irritable Bowel Syndrome', 22),
(23, 'Allergic Rhinitis', 23),
(24, 'Constipation', 24),
(25, 'Herpes Simplex Infection', 25),
(26, 'Fungal Infection', 26),
(27, 'Arthritis', 27),
(28, 'Open-Angle Glaucoma', 28),
(29, 'Overactive Bladder', 29),
(30, 'Schizophrenia', 30);
