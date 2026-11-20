USE hospital_db;

CREATE TABLE Disease (
    disease_id INT PRIMARY KEY, 
    name VARCHAR (255) NOT NULL, 
    med_id INT UNSIGNED, 
    doctor_id INT,
    FOREIGN KEY (med_id) REFERENCES Medications(med_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
); 

INSERT INTO Disease (disease_id, name) VALUES
(1,  'Type 2 Diabetes'),
(2,  'Hypercholesterolaemia'),
(3,  'Hypertension'),
(4,  'Gastro-oesophageal Reflux Disease'),
(5,  'Asthma'),
(6,  'Hypothyroidism'),
(7,  'Depression'),
(8,  'Atrial Fibrillation'),
(9,  'Heart Failure'),
(10, 'Angina Pectoris'),
(11, 'Chronic Obstructive Pulmonary Disease'),
(12, 'Bacterial Infection'),
(13, 'Urinary Tract Infection'),
(14, 'Gout'),
(15, 'Osteoporosis'),
(16, 'Benign Prostatic Hyperplasia'),
(17, 'Migraine'),
(18, 'Epilepsy'),
(19, 'Parkinson''s Disease'),
(20, 'Alzheimer''s Disease'),
(21, 'Rheumatoid Arthritis'),
(22, 'Irritable Bowel Syndrome'),
(23, 'Allergic Rhinitis'),
(24, 'Constipation'),
(25, 'Herpes Simplex Infection'),
(26, 'Fungal Infection'),
(27, 'Arthritis'),
(28, 'Open-Angle Glaucoma'),
(29, 'Overactive Bladder'),
(30, 'Schizophrenia');
