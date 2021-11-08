CREATE TABLE animals (
    id bigserial,
    scientific_name varchar(25),
    generic_name varchar(50),
    enclosure varchar(50),
    aquired_date date,
    age numeric
);

INSERT INTO animals (scientific_name, generic_name, enclosure, aquired_date, age)
VALUES ('Loxodonta', 'Elephant', 'Safari 1', '2011-10-30', 10),
       ('Odobenus rosmarus', 'Walrus', 'Oceanic 1', '1993-05-22', 2),
       ('Pinnipedia', 'Seal', 'Oceanic 2', '2005-08-01', 3),
       ('Giraffa', 'Giraffe', 'Safari 2', '2011-10-30', 1),
       ('Syncerus caffer', 'African buffalo', 'Safari 2', '2005-08-30', 5),
       ('Bison bonasus', 'European bison', 'Wild west 1', '2010-10-22', 4);