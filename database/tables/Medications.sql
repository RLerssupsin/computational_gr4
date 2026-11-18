USE hospital_db;

DROP TABLE IF EXISTS Medications;

CREATE TABLE Medications (
    med_id INT PRIMARY KEY,
    name VARCHAR(100)
);
INSERT INTO Medications (med_id, name) VALUES
(1, 'Metformin'),
(2, 'Atorvastatin'),
(3, 'Amlodipine'),
(4, 'Omeprazole'),
(5, 'Salbutamol'),
(6, 'Levothyroxine'),
(7, 'Sertraline'),
(8, 'Apixaban'),
(9, 'Bisoprolol'),
(10, 'Glyceryl trinitrate'),
(11, 'Tiotropium'),
(12, 'Amoxicillin'),
(13, 'Nitrofurantoin'),
(14, 'Allopurinol'),
(15, 'Alendronic acid'),
(16, 'Tamsulosin'),
(17, 'Sumatriptan'),
(18, 'Levetiracetam'),
(19, 'Co-careldopa'),
(20, 'Donepezil'),
(21, 'Methotrexate'),
(22, 'Mebeverine'),
(23, 'Cetirizine'),
(24, 'Lactulose'),
(25, 'Aciclovir'),
(26, 'Clotrimazole'),
(27, 'Naproxen'),
(28, 'Latanoprost'),
(29, 'Solifenacin'),
(30, 'Olanzapine');

-- SELECT * FROM Medications;