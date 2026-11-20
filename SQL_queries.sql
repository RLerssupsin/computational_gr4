SQL Qeuries for Data Extraction:

1. -- Print a list of all doctors from a particular hospital
    
       SELECT d. doctor_id, d.name FROM DOCTORS
       WHERE hospital_id = ? 

2.  -- Print a list of all prescriptions for a particular patient, ordered by the prescription date
       
        SELECT * FROM Prescriptions
        WHERE patient_id = ?
        ORDER BY date_within_the_past_2years
        ASC;

3. -- Print a list of all prescriptions that a particular doctor has prescribed

       SELECT * FROM Prescriptions
       WHERE doctor_id = ?

4. -- Print a table showing all prescriptions ordered by patient name alphabetically

      SELECT p.prescript_id, p.name, p.doctor_id, p.med_id, p.date_within_the_past_2years
      FROM Prescriptions
      JOIN  Patients
      ON  p.patient_id = p.patient_id
      ORDER BY p.name
      ASC;
