CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    resource_type varchar(20),
    gender varchar(10)
);

CREATE TABLE medications (
    id SERIAL PRIMARY KEY,
    resource_type varchar(20),
    medication text
);

CREATE TABLE conditions (
    id SERIAL PRIMARY KEY,
    resource_type varchar(20),
    condition varchar(100)
);


select medication,count(*)
from medications
group by medication
order by 2 desc
LIMIT 10;

SELECT gender, COUNT(*) AS qtd
FROM patients
GROUP BY gender;

select condition, count(*)
from conditions
group by condition 
order by 2 desc
limit 10;


