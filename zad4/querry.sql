SELECT 
    entity_id,
    Year,
    STR_TO_DATE(CONCAT(Year, '-01-01'), '%Y-%m-%d') AS year_date,
    CURDATE() AS current_date_val,
    TIMESTAMPDIFF(YEAR, STR_TO_DATE(CONCAT(Year, '-01-01'), '%Y-%m-%d'), CURDATE()) AS year_diff
FROM infectious_cases_normalized
LIMIT 10;
