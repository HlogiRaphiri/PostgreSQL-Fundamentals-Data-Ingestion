--Task 1: Database Creation

CREATE DATABASE zaio_bootcamp;

--Task 2: Table Creation (15 Marks)

CREATE TABLE zaio_students (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  full_name varchar(100) NOT NULL,
  bootcamp_track varchar(50),
  cohort_year INT DEFAULT 2026);

--Task 3: Bulk Data Ingestion

COPY zaio_students (full_name, bootcamp_track, cohort_year)
FROM 'D:/downloads/zaio_50_students_data.txt'
WITH (FORMAT csv, DELIMITER ',');

--Task 4: Data Verification Queries

select count(*) from zaio_students;

SELECT 
    bootcamp_track,
    COUNT(*) AS total_students
FROM zaio_students
GROUP BY bootcamp_track
ORDER BY total_students DESC;
--drop table if exists zaio_students;

--Task 5: GitHub Submission

git add zaio_setup.sql
git commit -m "feat: database setup and bulk ingestion"
git push