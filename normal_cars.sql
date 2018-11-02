-- CREATE USER normal_user;

-- CREATE DATABASE normal_cars OWNER normal_user;
-- moved 1 & 3 to normalcars_setup;


CREATE TABLE IF NOT EXISTS make_ct AS
 SELECT DISTINCT make_code, make_title
 FROM car_models;

ALTER TABLE make_ct
ADD make_ct_ID serial;

ALTER TABLE make_ct
ADD PRIMARY KEY (make_ct_ID);

DROP TABLE IF EXISTS model_ct;

CREATE TABLE IF NOT EXISTS model_ct (
  id serial,
  model_code varchar(255),
  model_title varchar(255),
  PRIMARY KEY (id)
);

INSERT INTO model_ct (model_code, model_title)
SELECT DISTINCT model_code, model_title
FROM car_models;


-- CREATE TABLE IF NOT EXISTS model_ct AS
--  SELECT DISTINCT model_code, model_title, year
--  FROM car_models;

-- ALTER TABLE model_ct
-- ADD model_ct_ID serial;

-- ALTER TABLE model_ct
-- ADD PRIMARY KEY (model_ct_ID);

-- ALTER TABLE model_ct
-- DROP COLUMN year;

CREATE TABLE IF NOT EXISTS all_years AS
 SELECT DISTINCT year
 FROM car_models;

ALTER TABLE all_years
ADD all_years_ID serial;

ALTER TABLE all_years
ADD PRIMARY KEY (all_years_ID);

----

DROP TABLE cars_combined;

CREATE TABLE IF NOT EXISTS cars_combined (
  car_id serial PRIMARY KEY,
  model_ct_ID int,
  all_years_ID int,
  make_ct_ID int
);


INSERT INTO cars_combined (make_ct_ID, model_ct_ID, all_years_ID)
SELECT make_ct.make_ct_ID, model_ct.id, all_years.all_years_ID
FROM car_models
INNER JOIN make_ct
ON make_ct.make_code = car_models.make_code
INNER JOIN model_ct
ON model_ct.model_code = car_models.model_code
INNER JOIN all_years
ON all_years.year = car_models.year;

