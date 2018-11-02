--CREATE USER normal_user;

--CREATE DATABASE normal_cars OWNER normal_user;

-- CREATE TABLE IF NOT EXISTS make_ct
-- (
--  make_ct_ID serial,
--  make_code character varying(125) NOT NULL,
--  make_title character varying(125) NOT NULL,
--  PRIMARY KEY (make_ct_ID),
--  FOREIGN KEY (model_ct_ID)
-- );

--CREATE TABLE IF NOT EXISTS make_ct AS
--  SELECT DISTINCT make_code, make_title
--  FROM car_models;

-- ALTER TABLE make_ct
-- ADD make_ct_ID serial;

--ALTER TABLE make_ct
--ADD PRIMARY KEY (make_ct_ID);

--CREATE TABLE IF NOT EXISTS model_ct AS
--  SELECT DISTINCT model_code, model_title, year
--  FROM car_models;
--
-- ALTER TABLE model_ct
-- ADD model_ct_ID serial;
--
--ALTER TABLE model_ct
--ADD PRIMARY KEY (model_ct_ID);