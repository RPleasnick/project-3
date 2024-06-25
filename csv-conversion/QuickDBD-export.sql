-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- -- Determine the relations for Project 3 assignment

CREATE TABLE "top_artists" (
    "nameP" VARCHAR(50)   NOT NULL,
    "colloq_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "lifespanP" VARCHAR(20)   NOT NULL,
    "separator" DECIMAL   NOT NULL,
    "bio" VARCHAR(750)   NOT NULL
);

CREATE TABLE "carnegie" (
    "last_name" VARCHAR(50)   NOT NULL,
    "cited_name" VARCHAR(100)   NOT NULL,
    "artwork_genre" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "artist" VARCHAR(100)   NOT NULL,
    "creation_date" VARCHAR(30)   NOT NULL,
    "nationality" VARCHAR(50)   NOT NULL,
    "index" DECIMAL   NOT NULL,
    "museum" VARCHAR(100)   NOT NULL
);

CREATE TABLE "cleveland" (
    "artist" VARCHAR(100)   NOT NULL,
    "colloq_name" VARCHAR(100)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "creation_date" VARCHAR(30)   NOT NULL,
    "department" VARCHAR(100)   NOT NULL,
    "artwork_genre" VARCHAR(50)   NOT NULL,
    "museum" VARCHAR(100)   NOT NULL
);

CREATE TABLE "chicago" (
    "artist" VARCHAR(100)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "museum" VARCHAR(100)   NOT NULL,
    "artwork_genre" VARCHAR(50)   NOT NULL,
    "creation_date" VARCHAR(30)   NOT NULL
);

ALTER TABLE "carnegie" ADD CONSTRAINT "fk_carnegie_artist" FOREIGN KEY("artist")
REFERENCES "top_artists" ("last_name");

ALTER TABLE "cleveland" ADD CONSTRAINT "fk_cleveland_artist" FOREIGN KEY("artist")
REFERENCES "top_artists" ("last_name");

ALTER TABLE "chicago" ADD CONSTRAINT "fk_chicago_artist" FOREIGN KEY("artist")
REFERENCES "top_artists" ("last_name");

