CREATE DATABASE MOVIES
USE MOVIES
 
 CREATE TABLE Movie (
mov_id INT PRIMARY KEY,
mov_title CHAR(50),
mov_year INT,
mov_time INT,
mov_lang CHAR(50),
mov_dt_rel DATE,
mov_rel_country CHAR(5),
)

 CREATE TABLE Actor (
act_id INT PRIMARY KEY,
act_fname CHAR(20),
act_lname CHAR(20),
act_gender CHAR(1),
)

CREATE TABLE Movie_Cast(
act_id INT,
mov_id INT,
role CHAR(30),
FOREIGN KEY (act_id) REFERENCES Actor(act_id),
FOREIGN KEY (mov_id) REFERENCES Movie(mov_id)
)

CREATE TABLE Directory (
dir_id INT PRIMARY KEY,
dir_fname CHAR(20),
dir_lname CHAR(20),
)

CREATE TABLE Movie_Director (
dir_id INT,
mov_id INT,
FOREIGN KEY (dir_id) REFERENCES Directory(dir_id),
FOREIGN KEY (mov_id) REFERENCES Movie(mov_id)

)

CREATE TABLE Genres (
gen_id INT PRIMARY KEY ,
gen_title CHAR(20),
)

CREATE TABLE Movie_genres (
gen_id INT,
mov_id INT,
FOREIGN KEY (mov_id) REFERENCES Movie(mov_id),
FOREIGN KEY (gen_id) REFERENCES Genres(gen_id)
)

CREATE TABLE Reviewer (
rev_id INT PRIMARY KEY,
rev_name CHAR(30),
)

CREATE TABLE Rating (
mov_id INT,
rev_id INT,
rev_stars INT,
num_o_ratings INT , 
FOREIGN KEY (mov_id) REFERENCES Movie(mov_id),
FOREIGN KEY (rev_id) REFERENCES Reviewer(rev_id)
)
