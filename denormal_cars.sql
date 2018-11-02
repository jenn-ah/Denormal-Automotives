SELECT DISTINCT make_title
FROM car_models;
--71 rows

SELECT DISTINCT model_title
FROM car_models
WHERE make_code='VOLKS';
--27 rows


SELECT DISTINCT make_code, model_code, model_title, year
FROM car_models
WHERE make_code='LAM';
--136 rows

SELECT DISTINCT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
--7884 rows