DROP TABLE IF EXISTS books;

CREATE TABLE IF NOT EXISTS books (
	id SERIAL,
	title VARCHAR(150),
	year_published SMALLINT,
	price NUMERIC
);

-- Ceci est un commentaire

INSERT INTO books (id, title, year_published, price) 
VALUES (1, 'Introduction to SQL', 2010, 15.49);

-- Lire tables
SELECT * FROM books;
SELECT id, title FROM books;
SELECT 39*3 AS product;
SELECT title, 6+6 FROM books;
SELECT id, price - 5 AS discounted_price, 'Disponible' AS availability FROM books;
SELECT * FROM books LIMIT 1;
SELECT * FROM books WHERE year_published = 2010;
SELECT * FROM books WHERE price = 21.99;

INSERT INTO books (id, title, year_published, price) 
VALUES (2, 'Git & GitHub', 2014, 21.99);

-- Supprimer
DELETE FROM books WHERE id = 1;

TRUNCATE TABLE books;

DROP TABLE books;
CREATE TABLE IF NOT EXISTS public.books (
    id SERIAL,
    title VARCHAR(150),
    year_published SMALLINT,
    price NUMERIC
);
INSERT INTO books (title, year_published, price) VALUES
('Introduction au SQL', 2000, 15.49),
('La methode Agile', 2005, 23.99),
('Git & GitHub', 2020, 41.99),
('SQL pour l''analyse des données', 2021, 59.99),
('Le CSS', 2014, 15.99),
('SQL : éléments internes de la base de données', 2018, 63.75),
('Java: Introduction', 2014, 11.99),
('Laravel pour les nuls', 2012, 23.99),
('L''art du SQL', 2015, 27.75);


UPDATE books SET price = 10.49 WHERE id =1;

-- Ordonner le résultat
SELECT * FROM books ORDER BY id;
SELECT * FROM books ORDER BY year_published DESC;
SELECT * FROM books ORDER BY year_published DESC, id DESC;

-- Sans doublons
SELECT DISTINCT year_published FROM books;
SELECT * FROM books;
-- Modifier structure table
ALTER TABLE books 
ADD COLUMN pages SMALLINT;

UPDATE books SET pages = 300 WHERE id = 3;

SELECT * FROM books WHERE pages IS NULL;
SELECT * FROM books WHERE pages IS NOT NULL;

-- LIKE & ILIKE
SELECT * FROM books WHERE id IN (4,9,1,6);
SELECT * FROM books WHERE title LIKE '%SQL';
SELECT * FROM books WHERE title LIKE 'SQL%';
SELECT * FROM books WHERE title LIKE '%SQL%';
SELECT * FROM books WHERE title ILIKE '%sql%';


-- Aggregations: SUM, MIN, MAX, AVG, COUNT
-- COUNT
SELECT COUNT(*) FROM books;
SELECT COUNT(id) AS total FROM books;
SELECT COUNT(pages) AS total FROM books;

-- MIN
SELECT MIN(year_published) FROM books;

-- MAX
SELECT MAX(year_published) FROM books;

-- SUM
SELECT SUM(price) FROM books;

-- AVG
SELECT AVG(price) FROM books;

-- ROUND
SELECT ROUND(AVG(price), 2) FROM books;