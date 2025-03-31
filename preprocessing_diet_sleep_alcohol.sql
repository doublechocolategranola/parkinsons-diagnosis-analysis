SELECT
  p.PatientID,
  p.Diagnosis,
  p.DietQuality,
  p.SleepQuality,
  p.AlcoholConsumption
FROM `parkinsonsproject.parkinsons_data.parkinsons_disease_data` as p
WHERE p.DietQuality IS NOT NULL
  AND p.SleepQuality IS NOT NULL
  AND p.AlcoholConsumption IS NOT NULL