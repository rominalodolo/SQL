# The Complete Python Postgre SQL Course 2.0
Created by Codestars by Rob Percival, Jose Salvatierra, Teclado by Jose Salvatierra

Check it out here: [Udemy Course](https://www.udemy.com/course/complete-python-postgresql-database-course/)

## E-BOOK 
[Course Guide & Activities](https://pysql.tecladocode.com)


## Build a Programming Journal with Python & SQL

SQLite Activities: 

![exercise1_books](https://user-images.githubusercontent.com/83961643/151131755-43587f1b-2006-4d05-9322-0ffff6415361.jpeg)
![exercise2_reviewers](https://user-images.githubusercontent.com/83961643/151131778-2a84c4ac-c585-45ef-9827-e7c045020b9d.jpeg)
![exercise3_temp](https://user-images.githubusercontent.com/83961643/151131788-c27bdb03-8733-430e-8278-812d5c82b3d5.jpeg)

INSERT INTO 

Exercise 1:

![1](https://user-images.githubusercontent.com/83961643/151775135-8adeaeaf-93b0-46b3-99a7-b34632831ca7.jpeg)
![2](https://user-images.githubusercontent.com/83961643/151775155-8994d74b-e43e-4de6-a56e-6b6e7f2fbc73.jpeg)

Exercise 2:

![1](https://user-images.githubusercontent.com/83961643/151790336-be531890-f9eb-4830-8d3e-42a1195f4f06.jpeg)
![2](https://user-images.githubusercontent.com/83961643/151790322-ca27e9fb-7d09-437e-a2b0-38ba6f55f144.jpeg)


SELECT function

![select15](https://user-images.githubusercontent.com/83961643/153846585-af33c82b-7eec-43b6-bfee-8525c84875df.jpeg)


The WHERE clause goes after SELECT * ... ie table name:

- SELECT * FROM users
    - WHERE first_name = 'John';
    - WHERE age > 18;
    - WHERE salary < 35000;
    - WHERE surname != 'Smith';

- Comparison operators
    - `<` : lower than
    - `>` : greater than
    - `<=`: lower than or equal to 
    - `>=` : greater than or equal to 
    - `=` : ecactly equal to 
    - `!=` : not equal to 

- Multiple comparisons 
    - Use `AND` and `OR` to chain comparisons logically
        - WHERE years_experience `>` 10 AND salary `<`3500;
        - WHERE age `<=` 18 OR age `>=` 65;

- Grouping comparisons with brackets
    - Comparisons inside brackets are evaluated first:
        - WHERE age `<=` 18 OR age `>=` 65 AND salary `>` 0;
            - this is how you want to read it : you have to be less than or equal to 18 or you have to be 65 or more and the salary must be greater than 0 : however, the intent isn't that clear. That's why you use brackets. 
        - WHERE (age `<=` 18 OR age `>=` 65) AND salary `>` 0;
            - in this eg. the program will first evaluate the age in brackets then move on to the next call about salary. 
        - WHERE age `<=` 18 OR (age `>=` 65 AND salary `>` 0);
            - the last eg. shows how the brackets change the meaning of AND making it mean the conditions will be either less than or equal to 18 or that the age must be greater &/ equal to 65 with a salary larger than 0. 


deleting entire tables with the DROP TABLE command 
 - DROP TABLE entries;
 - DROP TABLE IF EXISTS entries;