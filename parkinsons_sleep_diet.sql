SELECT
  p.Diagnosis,
  ROUND(p.SleepQuality) AS sleep_level,
  COUNT(*) AS num_patients,
  AVG(p.DietQuality) AS avg_diet
FROM `parkinsonsproject.parkinsons_data.parkinsons_disease_data` AS p
WHERE p.DietQuality IS NOT NULL
  AND p.SleepQuality IS NOT NULL
  AND p.AlcoholConsumption IS NOT NULL
GROUP BY p.Diagnosis, sleep_level
ORDER BY p.Diagnosis, sleep_level;