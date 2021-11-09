CREATE TABLE movie_premier (
	id varchar(40),
	movie varchar(40),
	actor varchar(40)
);

DROP TABLE movie_premier

COPY movie_premier
FROM '/Users/rominalodolo/Desktop/GitHub/SQL/PracticalSQLExercises/Chap4/exercise1.txt'
WITH (FORMAT CSV, HEADER, DELIMITER ':');