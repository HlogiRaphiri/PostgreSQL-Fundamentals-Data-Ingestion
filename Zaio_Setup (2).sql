CREATE TABLE zaio_students (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  full_name varchar(100) NOT NULL,
  bootcamp_track varchar(50),
  cohort_year INT DEFAULT 2026);
  
COPY zaio_students (full_name, bootcamp_track, cohort_year)
FROM 'D:/downloads/zaio_50_students_data.txt'
WITH (FORMAT csv, DELIMITER ',');


select count(*) from zaio_students;

SELECT bootcamp_track, 
COUNT(*) AS total_students
FROM zaio_students
GROUP BY bootcamp_track
ORDER BY total_students DESC;



