-- Active: 1745648994699@@127.0.0.1@3306@movies
USE movies;

DROP TABLE movies;

CREATE TABLE Movies (

movie_id INT PRIMARY KEY AUTO_INCREMENT,

title VARCHAR(255) NOT NULL,

release_year YEAR NOT NULL,

genre VARCHAR(100) NOT NULL,

language VARCHAR(50) DEFAULT 'Telugu',

duration_minutes INT NOT NULL,

rating DECIMAL(3, 1),

director_id INT,

FOREIGN KEY (director_id) REFERENCES Directors(director_id) );



DROP TABLE directors;


CREATE TABLE Directors (

director_id INT PRIMARY KEY AUTO_INCREMENT,

name VARCHAR(255) NOT NULL,

dob DATE,

nationality VARCHAR(100),

awards TEXT

);



CREATE TABLE Actors (

actor_id INT PRIMARY KEY AUTO_INCREMENT,

name VARCHAR(255) NOT NULL,

dob DATE,

gender CHAR(1),

nationality VARCHAR(100),

debut_year YEAR);

SHOW tables;


INSERT INTO Directors (name, dob, nationality, awards) VALUES
('S. S. Rajamouli', '1973-10-10', 'Indian', 'Padma Shri, National Film Awards'),
('Christopher Nolan', '1970-07-30', 'British-American', 'Academy Award, BAFTA'),
('Rajkumar Hirani', '1962-11-20', 'Indian', 'Filmfare Awards');


INSERT INTO Actors (name, dob, gender, nationality, debut_year) VALUES
('Prabhas', '1979-10-23', 'M', 'Indian', 2002),
('Deepika Padukone', '1986-01-05', 'F', 'Indian', 2007),
('Leonardo DiCaprio', '1974-11-11', 'M', 'American', 1991),
('Alia Bhatt', '1993-03-15', 'F', 'Indian', 2012);

INSERT INTO Movies (title, release_year, genre, language, duration_minutes, rating, director_id) VALUES
('Baahubali: The Beginning', 2015, 'Action', 'Telugu', 159, 8.1, 1),
('Baahubali: The Conclusion', 2017, 'Action', 'Telugu', 167, 8.2, 1),
('Inception', 2010, 'Sci-Fi', 'English', 148, 8.8, 2),
('Dunki', 2023, 'Drama', 'Hindi', 161, 7.5, 3);



SELECT * FROM movies;