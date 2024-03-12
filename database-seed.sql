CREATE ROLE root LOGIN WITH PASSWORD 'postgre'
CREATE TABLE IF NOT EXISTS users 
(
    id serial PRIMARY KEY,  
    name VARCHAR (255) UNIQUE NOT NULL, 
    email VARCHAR (255) UNIQUE NOT NULL, 
    age INT NOT NULL
);
CREATE TABLE skills
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(65),
    image VARCHAR(65),
    level SMALLINT,
    name_parent VARCHAR(65)

);
INSERT INTO users(name,email, age) VALUES
 ('Zohrabi','reza.zohrabi@gmail.com', 25),
 ('lempereur','julien.lempereur@gmail.com', 21),
 ('tabassomi-foumeni','keziah.tabassomi@gmail.com', 20),
 ('Fayolle','aramis.fayolle@gmail.com',  20);

INSERT INTO skills(name, image, level, name_parent) VALUES
 ('Physics', 'Not-defined', 1, 'None'),
 ('Mathematics', 'Not-defined', 1, 'None'),
 ('Computer science', 'Not-defined', 1, 'None'),
 ('Cryptography', 'Not-defined', 2, 'Computer science'),
 ('Web dev', 'Not-defined', 2, 'Computer science'),
 ('AI', 'Not-defined', 2, 'Computer science'),
 ('Linear Algebra', 'Not-defined', 2, 'Mathematics'),
 ('Analysis', 'Not-defined', 2, 'Mathematics'),
 ('Statistics', 'Not-defined', 2, 'Mathematics'),
 ('Quantum mechanics', 'Not-defined', 2, 'Physics'),
 ('Signal processing', 'Not-defined', 2, 'Physics'),
 ('Astronomy', 'Not-defined', 2, 'Physics');

