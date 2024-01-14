DROP TABLE IF EXISTS films_acteurs;
DROP TABLE IF EXISTS films_categories;
DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS acteurs;
DROP TABLE IF EXISTS categories;

-- Création des tables
CREATE TABLE IF NOT EXISTS films (
	id SERIAL PRIMARY KEY,
	titre VARCHAR(250) NOT NULL,
	annee SMALLINT NOT NULL,
	score NUMERIC(4,2)
);

CREATE TABLE IF NOT EXISTS acteurs (
	id SERIAL PRIMARY KEY,
	nom VARCHAR(250) NOT NULL,
	date_de_naissance DATE
);

CREATE TABLE IF NOT EXISTS categories (
	id SERIAL PRIMARY KEY,
	nom VARCHAR(250) NOT NULL
);

---- Création des tables intermediaires
CREATE TABLE IF NOT EXISTS films_acteurs (
	film_id INTEGER REFERENCES films,
	acteur_id INTEGER REFERENCES acteurs
);

CREATE TABLE IF NOT EXISTS films_categories (
	film_id INTEGER REFERENCES films,
	categorie_id INTEGER REFERENCES categories
);

-- Insertion des données
---- Insertion des films
INSERT INTO films (titre, annee, score)
VALUES 
  ('The Great Gatsby', 2013, 7.2),
  ('Shutter Island', 2010, NULL),
  ('La La Land', 2016, 8.0),
  ('A Beautiful Mind', 2001, 8.2),
  ('The Shape of Water', 2017, NULL),
  ('Blade Runner 2049', 2017, NULL),
  ('Jurassic Park', 1993, NULL),
  ('Fight Club', 1999, 8.8),
  ('The Matrix', 1999, 8.7),
  ('The Godfather', 1972, 9.2),
  ('Pulp Fiction', 1994, 8.9),
  ('The Dark Knight', 2008, 9.0),
  ('The Dark Knight Rises', 2012, 8.4),
  ('Forrest Gump', 1994, 8.8),
  ('Goodfellas', 1990, 8.7),
  ('Saving Private Ryan', 1998, 8.6),
  ('Gladiator', 2000, 8.5),
  ('Titanic', 1997, 7.8),
  ('The Revenant', 2015, 8.0),
  ('Spider-Man', 2002, 7.4),
  ('Dunkirk', 2017, 7.8),
  ('Inception', 2010, 8.8),
  ('Wonder Woman', 2017, 7.4);

---- Insertion des acteurs
INSERT INTO acteurs (nom, date_de_naissance)
VALUES 
  ('Tobey Maguire', NULL),
  ('Willem Dafoe', NULL),
  ('Leonardo DiCaprio', '1974-11-11'),
  ('Cillian Murphy', '1976-05-25'),
  ('Kate Winslet', '1975-10-05'),
  ('Russell Crowe', '1964-04-07'),
  ('Tom Hanks', '1956-07-09'),
  ('Matt Damon', '1970-10-08'),
  ('Samuel L. Jackson', '1948-12-21'),
  ('Robert De Niro', '1943-08-17'),
  ('Gal Gadot', '1985-04-30'),
  ('Christian Bale', '1974-01-30'),
  ('Joseph Gordon-Levitt', '1981-02-17'),
  ('Tom Hardy', '1977-09-15'),
  ('John Travolta', '1954-02-18'),
  ('Keanu Reeves', '1964-09-02'),
  ('Laurence Fishburne', '1961-07-30'),
  ('Brad Pitt', '1963-12-18'),
  ('Ryan Gosling', '1980-11-12'),
  ('Al Pacino', '1940-04-25'),
  ('Robin Wright', '1966-04-08');
  

-- Insertion des données de la table intermediaire FILMS ACTEURS
INSERT INTO films_acteurs (film_id, acteur_id)
VALUES
    (20, 1),  -- Spider-Man, Tobey Maguire
    (1, 1),   -- The Great Gatsby, Tobey Maguire
    (20, 2),  -- Spider-Man, Willem Dafoe
    (1, 3),   -- The Great Gatsby, Leonardo DiCaprio
    (2, 3),   -- Shutter Island, Leonardo DiCaprio
    (18, 3),  -- Titanic, Leonardo DiCaprio
    (19, 3),  -- The Revenant, Leonardo DiCaprio
    (22, 3),  -- Inception, Leonardo DiCaprio
    (21, 4),  -- Dunkirk, Cillian Murphy
    (12, 4),  -- The Dark Knight, Cillian Murphy
    (18, 5),  -- Titanic, Kate Winslet
    (4, 6),   -- A Beautiful Mind, Russell Crowe
    (17, 6),  -- Gladiator, Russell Crowe
    (14, 7),  -- Forrest Gump, Tom Hanks
    (16, 7),  -- Saving Private Ryan, Tom Hanks
    (16, 8),  -- Saving Private Ryan, Matt Damon
    (11, 9),  -- Pulp Fiction, Samuel L. Jackson
    (15, 9),  -- Goodfellas, Samuel L. Jackson
    (15, 10), -- Goodfellas, Robert De Niro
    (23, 11), -- Wonder Woman, Gal Gadot
    (12, 12), -- The Dark Knight, Christian Bale
    (13, 12), -- The Dark Knight Rises, Christian Bale
    (12, 13), -- The Dark Knight, Joseph Gordon-Levitt
    (21, 14), -- Dunkirk, Tom Hardy
    (12, 14), -- The Dark Knight Rises, Tom Hardy
    (19, 14), -- The Revenant, Tom Hardy
    (22, 14), -- Inception, Tom Hardy
    (11, 15), -- Pulp Fiction, John Travolta
    (9, 16),  -- The Matrix, Keanu Reeves
    (9, 17),  -- The Matrix, Laurence Fishburne
    (8, 18),  -- Fight Club, Brad Pitt
    (3, 19),  -- La La Land, Ryan Gosling
    (6, 19),  -- Blade Runner 2049, Ryan Gosling
    (10, 20), -- The Godfather, Al Pacino
    (14, 21), -- Forrest Gump, Robin Wright
    (23, 21); -- Wonder Woman, Robin Wright	
	
	
-- Insertion of categories
INSERT INTO categories (nom) VALUES
    ('Drama'),
    ('Romance'),
    ('Mystery'),
    ('Thriller'),
    ('Musical'),
    ('Biography'),
    ('Adventure'),
    ('Sci-Fi'),
    ('Crime'),
    ('Action'),
    ('War'),
    ('History');
	
-- Insertion des données de la table intermediaire FILMS_CATEGORIES	
INSERT INTO films_categories (film_id, categorie_id)
VALUES
    (1, 1),  -- The Great Gatsby, Drama
    (1, 2),  -- The Great Gatsby, Romance
    (2, 3),  -- Shutter Island, Mystery
    (2, 4),  -- Shutter Island, Thriller
    (3, 1),  -- La La Land, Drama
    (3, 5),  -- La La Land, Musical
    (4, 6),  -- A Beautiful Mind, Biography
    (4, 1),  -- A Beautiful Mind, Drama
    (5, 7),  -- The Shape of Water, Adventure
    (5, 1),  -- The Shape of Water, Drama
    (6, 8),  -- Blade Runner 2049, Sci-Fi
    (6, 4),  -- Blade Runner 2049, Thriller
    (7, 7),  -- Jurassic Park, Adventure
    (7, 8),  -- Jurassic Park, Sci-Fi
    (8, 1),  -- Fight Club, Drama
    (8, 10), -- Fight Club, Action
    (9, 10), -- The Matrix, Action
    (9, 8),  -- The Matrix, Sci-Fi
    (10, 10),    -- The Godfather, Action
    (10, 9),     -- The Godfather, Crime
    (11, 9),     -- Pulp Fiction, Crime
    (12, 10),    -- The Dark Knight, Action
    (12, 9),     -- The Dark Knight, Crime
    (13, 10),    -- The Dark Knight Rises, Action
    (13, 9),     -- The Dark Knight Rises, Crime
    (14, 1),     -- Forrest Gump, Drama
    (14, 2),     -- Forrest Gump, Romance
    (15, 6),     -- Goodfellas, Biography
    (15, 9),     -- Goodfellas, Crime
    (16, 1),     -- Saving Private Ryan, Drama
    (16, 11),    -- Saving Private Ryan, War
    (17, 10),    -- Gladiator, Action
    (17, 7),     -- Gladiator, Adventure
    (18, 1),     -- Titanic, Drama
    (18, 2),     -- Titanic, Romance
    (19, 10),    -- The Revenant, Action
    (19, 7),     -- The Revenant, Adventure
    (20, 10),    -- Spider-Man, Action
    (20, 8),     -- Spider-Man, Sci-Fi
    (21, 10),    -- Dunkirk, Action
    (21, 12),    -- Dunkirk, History
	(22, 10),  -- Inception, Action
    (22, 7),   -- Inception, Adventure
	(23, 10),  -- Wonder Woman, Action
    (23, 7);   -- Wonder Woman, Adventure
	
	
-- Lecture des données inserées
SELECT * FROM films;
SELECT * FROM acteurs;
SELECT * FROM films_acteurs;
SELECT * FROM categories;
SELECT * FROM films_categories;	


---- 1) Liste des films par titre, puis par année.
SELECT 
	titre, 
	annee 
FROM films 
ORDER BY titre DESC;

---- 2) Liste des films qui incluent le genre "Drama" dans leurs catégories.
SELECT 
	f.titre, 
	f.annee, 
	c.nom 
FROM films AS f
INNER JOIN films_categories AS fc 
ON fc.film_id = f.id
INNER JOIN categories AS c 
ON fc.categorie_id = c.id
WHERE c.nom ILIKE '%Drama%';

---- Aves sous requetes
SELECT 
	nom 
FROM categories 
WHERE nom ILIKE '%drama%';

SELECT 
	film_id 
FROM films_categories
WHERE categorie_id IN (
	SELECT id 
	FROM categories 
	WHERE nom ILIKE '%drama%'
);

SELECT 
	titre, 
	annee 
FROM films
WHERE id IN (
	SELECT film_id 
	FROM films_categories
	WHERE categorie_id IN (SELECT id 
	FROM categories 
	WHERE nom ILIKE '%drama%')
);

---- 3) Liste des films qui incluent les genres "Action" et "Aventure" dans leurs catégories.
SELECT 
	DISTINCT f.*
FROM films AS f
JOIN films_categories AS fc
ON fc.film_id = f.id
JOIN categories AS c
ON c.id = fc.categorie_id
WHERE c.id IN (7,10)
GROUP BY f.id
HAVING COUNT(DISTINCT c.nom) = 2;

---- 4) Liste des films dont le titre commence par "The".
SELECT 
	titre, 
	annee
FROM films
WHERE titre LIKE 'The%';

---- 5) Les id des 3 films les mieux notés.
SELECT 
	id AS movie_id, 
	score
FROM films
WHERE score IS NOT NULL
ORDER BY score DESC
LIMIT 3;

---- 6) Le film le plus ancien.
SELECT 
	titre, 
	annee
FROM films
ORDER BY annee
LIMIT 1;

---- 7) L'acteur le plus jeune.
SELECT 
	nom, 
	DATE_PART('year',AGE(date_de_naissance)) AS age
FROM acteurs
ORDER BY age
LIMIT 1;

--(SELECT date_part('year', now()) - date_part('year', date_de_naissance))


---- 8) Liste des films sortis dans les années 1990.
SELECT 
	titre, 
	annee
FROM films
WHERE annee BETWEEN 1990 AND 1999
ORDER BY annee;

---- 9) Les films sortis entre 2010 et 2015.
SELECT 
	titre, 
	annee
FROM films
WHERE annee > 2010 AND annee <= 2015
ORDER BY annee;

---- 10) Quelle est l'année la plus prolifique pour la réalisation de films dans ce jeu de données ?
SELECT 
	annee, 
	COUNT(*) AS movie_count_by_year
FROM films
GROUP BY annee
LIMIT 1;

---- 11) Combien de films ont été réalisés avant l'année 2000?
SELECT 
	COUNT(*) AS "Films avant 2000"
FROM films
WHERE annee < 2000;

---- 12) Quel âge a chaque acteur ?
SELECT 
	nom, 
	DATE_PART('year',AGE(date_de_naissance)) AS age
FROM acteurs;

---- 13) Quel est l'âge moyen des acteurs ?
SELECT 
	CAST(AVG(DATE_PART('year',AGE(date_de_naissance))) AS INTEGER) AS "Age moyen"
FROM acteurs;

---- 14) Quels sont les âges minimum et maximum des acteurs ? Utilisez une seule requête.
SELECT 
	MIN((DATE_PART('year',AGE(date_de_naissance)))) AS "Age Minimum",
	MAX((DATE_PART('year',AGE(date_de_naissance)))) AS "Age Maximum"
FROM acteurs;

---- 15) Pouvez-vous m'aider à vous rappeler un film avec "2049" dans son titre ?
SELECT * 
FROM films
WHERE titre ILIKE '%2049%';

---- 16) Quelles sont mes options pour regarder des films de crime et de biographie ?
SELECT 
	f.id, 
	f.titre, 
	f.annee, 
	STRING_AGG(DISTINCT c.nom, '/ ')
FROM films AS f
INNER JOIN films_categories AS fc 
ON fc.film_id = f.id
INNER JOIN categories AS c 
ON fc.categorie_id = c.id
WHERE c.nom ILIKE '%crime%' OR c.nom ILIKE '%biography%'
GROUP BY f.id, f.titre, f.annee;

---- 17) Utilisez la clause CASE pour répertorier les entrées dans la table des notes comme suit :
--------->= 9 Génial, > 8,5 Très bien, >= 7 Bien, <= 5 Ennuyeux.
SELECT 
	score,
	CASE
		WHEN score >= 9.0 THEN 'Génial'
		WHEN score > 8.5 THEN 'Très bien'
		WHEN score >= 7 THEN 'Bien'
		ELSE 'Ennuyeux'
	END
FROM films
WHERE score IS NOT NULL;

---- 18) Collecter la liste des acteurs et les films dans lesquels ils ont joué.
SELECT 
	a.nom, 
	STRING_AGG(f.titre, ', ')
FROM acteurs AS a
INNER JOIN films_acteurs AS fa
ON fa.acteur_id = a.id
INNER JOIN films AS f
ON fa.film_id = f.id
GROUP BY a.nom, a.id
ORDER BY a.id;


