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


- Deleting entire tables with the DROP TABLE command 
    - DROP TABLE entries;
    - DROP TABLE IF EXISTS entries;

    - in SQLite there are multiple ways to delete a table 
    
    ![1](https://user-images.githubusercontent.com/83961643/154542042-c7b89ac5-eb89-4bb3-b079-9320f7e2064d.png)

    ![2](https://user-images.githubusercontent.com/83961643/154542044-34ce1bcb-1775-4145-bb71-788fcffd3e4f.png)

- Injection Attacks 
    - "SQL injection is a web security vulnerability that allows an attacker to interfere with the queries that an application makes to its database." [READ MORE](https://portswigger.net/web-security/sql-injection)
    - use `?` instead of string formatting when working with databases to avoid python code running unwanted commands. 
        - GET_USER = "SELECT * FROM users WHERE first_name = ?;"
        - curser.execute(GET_USER, (username, ))

# Running the Program Diary app 

![run3](https://user-images.githubusercontent.com/83961643/154639582-41952397-0974-4f72-82a8-837264ce091e.jpeg)


# Movie Watch List App

![terminalmoviewatchlist](https://user-images.githubusercontent.com/83961643/154694260-30bd7496-f2ce-47fe-be15-72c37153d5ff.jpeg)

data.db file:

![datamovielist](https://user-images.githubusercontent.com/83961643/154804371-87fbda2b-a15f-43a4-af37-8642436b999b.jpeg)


# Different Database viewers and Servers
- [ElephantSQL](https://www.elephantsql.com)
- [pgAdmin](https://www.pgadmin.org)
- [HeidiSQL](www.heidisql.com)  


Working with ElephantSQL:
![1](https://user-images.githubusercontent.com/83961643/157055356-bf02a134-2646-4e97-a637-0ff39c834054.jpeg)
![2](https://user-images.githubusercontent.com/83961643/157055431-ddd1e2c4-a3d7-47eb-bf28-cfd1e4d09849.jpeg)
![3](https://user-images.githubusercontent.com/83961643/157055823-98a88ebf-5387-4157-86f7-c38789c969ee.jpeg)
![execute](https://user-images.githubusercontent.com/83961643/157055840-db0dd2a5-6957-4e0e-9d36-a74d67b9242d.jpeg)


Psycopg 
– PostgreSQL database adapter for Python

Download `psycopg2-binary` if you are new to code and make sure you only have one version installed. 

[Documentation](https://www.psycopg.org/docs/)

`pip install psycopg2` Run in terminal for the standard psycopg2 package

Downloading PyCharm [Download Here](https://www.jetbrains.com/pycharm/promo/?source=google&medium=cpc&campaign=14124132465&gclid=Cj0KCQiA95aRBhCsARIsAC2xvfxIi8WJsJqdF5idc6aPVxEOPPtFQDonuRzjD2_qyPzOS04LHax6jPwaAiraEALw_wcB)

## SEQUENCE in SQL
- A number generator 
- Table with a column and a row 
- Values starts at 1
- PostgreSQL comes with operations to increment the value or to get the current value

## SERIAL in SQL 
- Shortcut 
- Used as a data type when creating a table instead of INTEGER 
- Automatically creates a SEQUENCE for you & increases it's alue every time a new row is added
- That new value will be used by defulat when adding new rows

## ACID 
- atomicity
    - transactions are indivisible: every operation should be successful otherwise none do
    - EG: if you try to UPDATE & INSERT in the same transaction, if one fails the other is rolled back or just ignored.
- consistency
    - rules & constraints of the database are followed at all times
    - EG: foreign key constraints, you can't have a foreign key pointing ti a non-existing primary key value.
    - More constraints: UNIQUE, NOT NULL. 
- isolation
    - data is only vivible in the database when the transaction has ended & committed.
    - EG: if one transaction makes 10 INSERTs, another transaction won't see any of that data until the former has been committed. 
- durability
    - data is saved to permanent storage once a transaction is committed
    - contrasted to other databases that operate partially / fully "in memory"
    - operating in memory is faster, but riskier. Use a database that operates in memory for things you don't mind losing. 


# Poll App 

To install the requirements I opened terminal at the Poll App folder in VScode and ran these commands: 
`pip install psycopg2-binary==2.8.5`
`pip install python-dotenv==0.13.0`
![terminalPollApp](https://user-images.githubusercontent.com/83961643/158191296-24f7ddef-5ecd-4a18-972b-e50a7ea32a35.jpeg)

Creating the .env file for your app 
`DATABASE_URI=` and the postgres link from your ElephantSQL - Instance - Details - URL - section. 
![workingpollapp](https://user-images.githubusercontent.com/83961643/158334004-b1894aaa-09c7-48c5-bde7-d1950bdcc5d7.jpeg)




# Working with dates and times 

# Python & Advanced PostgreSQL with psycopg2


# Charting data from our tables using matplotlib


LAST EDIT March 2022
