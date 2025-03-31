SELECT
  p.Diagnosis,
  ROUND(p.DietQuality) AS diet_level,
  COUNT(*) AS num_patients,
  AVG(p.AlcoholConsumption) AS avg_alc
FROM `parkinsonsproject.parkinsons_data.parkinsons_disease_data` AS p
WHERE p.DietQuality IS NOT NULL
  AND p.SleepQuality IS NOT NULL
  AND p.AlcoholConsumption IS NOT NULL
GROUP BY p.Diagnosis, diet_level
ORDER BY p.Diagnosis, diet_level;