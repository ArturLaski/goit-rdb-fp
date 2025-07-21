SELECT 
    ic.entity_id,
    AVG(CAST(Number_rabies AS UNSIGNED)) AS avg_rabies,
    MIN(CAST(Number_rabies AS UNSIGNED)) AS min_rabies,
    MAX(CAST(Number_rabies AS UNSIGNED)) AS max_rabies,
    SUM(CAST(Number_rabies AS UNSIGNED)) AS sum_rabies
FROM infectious_cases_normalized ic
WHERE Number_rabies != ''
GROUP BY ic.entity_id
ORDER BY avg_rabies DESC
LIMIT 10;
