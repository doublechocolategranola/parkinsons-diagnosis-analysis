SELECT
  p.Diagnosis,
  ROUND(p.SleepQuality) AS sleep_level,
  ROUND(p.AlcoholConsumption) AS alc_level,
  COUNT (*) AS num_patients,
  AVG(p.DietQuality) as avg_diet
FROM `parkinsonsproject.parkinsons_data.parkinsons_disease_data` as p
WHERE p.DietQuality IS NOT NULL
  AND p.SleepQuality IS NOT NULL
  AND p.AlcoholConsumption IS NOT NULL
GROUP BY p.Diagnosis, sleep_level, alc_level
ORDER BY p.Diagnosis, sleep_level, alc_level