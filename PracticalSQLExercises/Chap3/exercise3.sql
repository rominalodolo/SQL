CREATE TABLE testing_chap3_exercise3 (
text_column text
);
INSERT INTO testing_chap3_exercise3
VALUES 
('4/3/2017');
SELECT * FROM testing_chap3_exercise3
SELECT text_column, CAST (text_column)
SELECT text_column::timestamp FROM testing_chap3_exercise3
DELETE FROM testing_chap3_exercise3 