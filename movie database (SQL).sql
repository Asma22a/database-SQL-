CREATE DATABASE MOVIES
USE MOVIES 
CREATE TABLE Movie_Cast(
act_id INT,
mov_id INT,
role CHAR(30),
)
CREATE TABLE Actor (
act_id INT PRIMARY KEY,
act_fname CHAR(20),
act_lname CHAR(20),
act_gender CHAR(1),
)
CREATE TABLE Directory (
dir_id INT PRIMARY KEY,
dir_fname CHAR(20),
dir_lname CHAR(20),
)
CREATE TABLE Movie_Director (
dir_id INT,
mov_id INT,
)
CREATE TABLE Genres (
gen_id INT PRIMARY KEY ,
gen_title CHAR(20),
)
CREATE TABLE Movie_genres (
gen_id INT,
mov_id INT,
)
CREATE TABLE Rating (
mov_id INT,
rev_id INT,
rev_stars INT,
num_o_ratings INT ,
)
CREATE TABLE Reviewer (
rev_id INT PRIMARY KEY,
rev_name CHAR(30),
)
