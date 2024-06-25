-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "top_artists" (
    "nameP" VARCHAR(50)   NOT NULL,
    "colloq_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "lifespanP" VARCHAR(20)   NOT NULL,
    "separator" DECIMAL   NOT NULL,
    "bio" VARCHAR(750)   NOT NULL
);

CREATE TABLE "cmoa" (
    "last_name" VARCHAR(50)   NOT NULL,
    "cited_name" VARCHAR(100)   NOT NULL,
    "classification" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "full_name" VARCHAR(100)   NOT NULL,
    "creation_date" VARCHAR(30)   NOT NULL,
    "nationality" VARCHAR(50)   NOT NULL,
    "index" DECIMAL   NOT NULL
);

CREATE TABLE "carnegie" (
    "last_name" VARCHAR(50)   NOT NULL,
    "cited_name" VARCHAR(100)   NOT NULL,
    "artwork_genre" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(450)   NOT NULL,
    "artist" VARCHAR(100)   NOT NULL,
    "creation_date" VARCHAR(50)   NOT NULL,
    "nationality" VARCHAR(50)   NOT NULL,
    "index" DECIMAL   NOT NULL,
    "museum" VARCHAR(100)   NOT NULL
);

CREATE TABLE "cleveland" (
    "artist" VARCHAR(100)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "museum" VARCHAR(100)   NOT NULL,
    "artwork_genre" VARCHAR(50)   NOT NULL,
    "creation_date" VARCHAR(100)   NOT NULL
);

CREATE TABLE "chicago" (
    "artist" VARCHAR(100)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "museum" VARCHAR(100)   NOT NULL,
    "artwork_genre" VARCHAR(50)   NOT NULL,
    "creation_date" VARCHAR(100)   NOT NULL
);

ALTER TABLE "cmoa" ADD CONSTRAINT "fk_cmoa_last_name" FOREIGN KEY("last_name")
REFERENCES "top_artists" ("last_name");

-- drop tables because source csv was updated, then rerun CREATE TABLE code -- 
-- have to drop VIEW first -- 
DROP VIEW carnegie_filtered; 
DROP TABLE top_artists
DROP TABLE cmoa
DROP TABLE carnegie
DROP TABLE chicago
drop TABLE cleveland

-- check here for sucessful creation and import from csv files --
-- START RUN HERE:

select * from top_artists

select * from carnegie

-- run query to ensure joins work -- 
SELECT  p.title, p.artist, p.cited_name, t."nameP" , p.artwork_genre, t.colloq_name, t.bio
FROM carnegie p
JOIN top_artists t
ON (p.last_name = t.last_name)

CREATE VIEW carnegie_filtered AS
SELECT  p.artist, p.title, p.museum, p.artwork_genre, p.creation_date, t.colloq_name
FROM carnegie p
JOIN top_artists t
ON (p.last_name = t.last_name)

select * from carnegie_filtered

select * from chicago

select * from cleveland

