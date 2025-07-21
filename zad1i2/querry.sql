CREATE TABLE entity (
    entity_id INT AUTO_INCREMENT PRIMARY KEY,
    entity_name VARCHAR(100),
    entity_code VARCHAR(10)
);

INSERT INTO entity (entity_name, entity_code)
SELECT DISTINCT Entity, Code FROM infectious_cases;

CREATE TABLE infectious_cases_normalized (
    id INT AUTO_INCREMENT PRIMARY KEY,
    entity_id INT,
    Year VARCHAR(4),
    Number_yaws VARCHAR(20),
    polio_cases VARCHAR(20),
    cases_guinea_worm VARCHAR(20),
    Number_rabies VARCHAR(20),
    Number_malaria VARCHAR(20),
    Number_hiv VARCHAR(20),
    Number_tuberculosis VARCHAR(20),
    Number_smallpox VARCHAR(20),
    Number_cholera_cases VARCHAR(20),
    FOREIGN KEY (entity_id) REFERENCES entity(entity_id)
);

INSERT INTO infectious_cases_normalized (
    entity_id, Year, Number_yaws, polio_cases, cases_guinea_worm,
    Number_rabies, Number_malaria, Number_hiv, Number_tuberculosis,
    Number_smallpox, Number_cholera_cases
)
SELECT 
    e.entity_id, i.Year, i.Number_yaws, i.polio_cases, i.cases_guinea_worm,
    i.Number_rabies, i.Number_malaria, i.Number_hiv, i.Number_tuberculosis,
    i.Number_smallpox, i.Number_cholera_cases
FROM infectious_cases i
JOIN entity e ON i.Entity = e.entity_name AND i.Code = e.entity_code;

SELECT COUNT(*) FROM entity;
SELECT COUNT(*) FROM infectious_cases;
SELECT COUNT(*) FROM infectious_cases_normalized;
