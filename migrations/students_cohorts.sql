-- CREATE TABLE cohorts (id primary, 
-- name VARCHAR(30),
-- start_date DATE,
-- end_date DATE,);

-- CREATE TABLE students (id primary,
-- name VARCHAR(30),
-- email VARCHAR(30),
-- phone integer,
-- github VARCHAR(30),
-- start_date DATE,
-- end_date DATE,
-- cohort_id VARCHAR(30));

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) 
  ON DELETE CASCADE
);

