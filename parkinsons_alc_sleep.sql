SELECT
  p.Diagnosis,
  ROUND(p.AlcoholConsumption) AS alcohol_level,
  COUNT(*) AS num_patients,
  AVG(p.SleepQuality) AS avg_sleep
FROM `parkinsonsproject.parkinsons_data.parkinsons_disease_data` AS p
WHERE p.DietQuality IS NOT NULL
  AND p.SleepQuality IS NOT NULL
  AND p.AlcoholConsumption IS NOT NULL
GROUP BY p.Diagnosis, alcohol_level
ORDER BY p.Diagnosis, alcohol_level;