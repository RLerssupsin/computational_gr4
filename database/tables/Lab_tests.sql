USE hospital_db;

CREATE TABLE Lab_tests (

    test_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    test_name VARCHAR(255) NOT NULL,

    PRIMARY KEY (test_id)

);

INSERT INTO Lab_tests (test_name) VALUES
('Full Blood Count'),
('Liver Function Test'),
('Renal Function Test'),
('Thyroid Function Test'),
('C-Reactive Protein'),
('Erythrocyte Sedimentation Rate'),
('Blood Glucose'),
('Glycated Haemoglobin'),
('Lipid Profile'),
('Serum Ferritin'),
('Serum Iron'),
('Vitamin B12'),
('Serum Folate'),
('Vitamin D'),
('Prothrombin Time'),
('Activated Partial Thromboplastin Time'),
('D-Dimer'),
('Troponin'),
('Serum Amylase'),
('Serum Lipase'),
('Serum Calcium'),
('Serum Magnesium'),
('Blood Culture'),
('Urine Culture'),
('Stool Culture'),
('Urinalysis'),
('Arterial Blood Gas'),
('Pregnancy Test'),
('Antinuclear Antibody Test'),
('Prostate Specific Antigen');
