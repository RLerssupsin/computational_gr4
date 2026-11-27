SQL Qeuries for Data Extraction:

1. -- Print a list of all doctors from a particular hospital
    
       SELECT d.doctor_id, d.name FROM Doctors
       WHERE hospital_id = 4

2.  -- Print a list of all prescriptions for a particular patient, ordered by the prescription date
       
        SELECT pa.patient_id, pa.name, pr.* FROM Prescriptions as pr
        LEFT JOIN Patients as pa
        ON pr.patient_id = pa.patient_id
        WHERE pa.patient_id = 141
        ORDER BY date
        ASC;

3. -- Print a list of all prescriptions that a particular doctor has prescribed

       SELECT do.doctor_id, pr.* FROM Doctors as do
       LEFT JOIN Prescriptions as pr
       WHERE doctor_id = 25;

4. -- Print a table showing all prescriptions ordered by patient name alphabetically

      SELECT pr.prescript_id, pa.name, pa.doctor_id, pr.med_id, pr.date
      FROM Patients as pa
      JOIN  Prescriptions as pr
      ON  pa.patient_id = pr.patient_id
      ORDER BY pa.name
      ASC;
