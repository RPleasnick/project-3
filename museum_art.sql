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

ALTER TABLE "cmoa" ADD CONSTRAINT "fk_cmoa_last_name" FOREIGN KEY("last_name")
REFERENCES "top_artists" ("last_name");

-- check here for sucessful creation and import from csv files --
-- START RUN HERE:

select * from top_artists

select * from cmoa

-- run query to ensure joins work -- 
SELECT  p.title, p.last_name, p.full_name, p.classification, t.colloq_name, t.bio
FROM cmoa p
JOIN top_artists t
ON (p.last_name = t.last_name)

CREATE VIEW cmoa_filtered AS
SELECT  p.title, p.last_name, p.full_name, t.colloq_name, t."lifespanP"
FROM cmoa p
JOIN top_artists t
ON (p.last_name = t.last_name)

select * from cmoa_filtered
