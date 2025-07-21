-- select from function
SELECT 
    entity_id,
    Year,
    year_difference(Year) AS year_diff
FROM infectious_cases_normalized
LIMIT 10;
