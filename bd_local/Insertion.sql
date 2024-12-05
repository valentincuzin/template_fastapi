-- Script for insert base values in Database
-- Active extension pgcrypto

ALTER TABLE account
ALTER COLUMN password TYPE text;

--Create an Account
INSERT INTO "account" (pseudonym, email, password, createdAt, lastLoginAt, birthDate, picture)
VALUES ('ale_a_jacta_est_', 'valentincuzin@murena.io', crypt('azerty', gen_salt('bf')), CURRENT_DATE, CURRENT_DATE, '2002-05-22', '');

-- create a Document
INSERT INTO "document" ( path, name, type, fileSize, createdAt, lastModifiedAt, lastVisitedAt, pseudonym )
VALUES ('doctest.md', 'doctest', 'markdown', 12, CURRENT_DATE, CURRENT_DATE, CURRENT_DATE, 'ale_a_jacta_est_');