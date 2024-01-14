DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS clients;

CREATE TABLE IF NOT EXISTS clients (
	id SERIAL PRIMARY KEY,
	company_name VARCHAR(150) NOT NULL,
	first_name VARCHAR(150) NOT NULL,
	last_name VARCHAR(150) NOT NULL,
	email VARCHAR(250) CHECK (email ILIKE '%@%' AND email ILIKE '%.%'),
	phone VARCHAR(20) NOT NULL,
	address VARCHAR(250) NOT NULL,
	zip_code VARCHAR(20) NOT NULL,
	city VARCHAR(150) NOT NULL,
	country VARCHAR(150) NOT NULL,
	state SMALLINT CHECK(state BETWEEN 0 AND 1) 
);

CREATE TABLE IF NOT EXISTS orders (
	id SERIAL PRIMARY KEY,
	type_presta VARCHAR(150) NOT NULL,
	designation VARCHAR(150) NOT NULL,
	client_id INTEGER REFERENCES clients,
	nb_days INTEGER NOT NULL,
	unit_price NUMERIC CHECK(unit_price>0),
	total_exclude_taxe NUMERIC GENERATED ALWAYS AS (unit_price * nb_days) STORED,
	total_with_taxe NUMERIC GENERATED ALWAYS AS (unit_price * nb_days * 1.2) STORED,
	state SMALLINT CHECK(state BETWEEN 0 AND 2)
);



CREATE RULE client_prevent_deletion AS ON DELETE TO clients DO INSTEAD NOTHING;

INSERT INTO clients (company_name, first_name, last_name, email, phone, address, zip_code, city, country, state)
VALUES
('Sopra', 'Fabrice', 'Martin', 'martin@mail.com', '06 56858433', 'abc' , 'xyz', 'Nantes', 'France', 0),
('M2I Formation', 'Julien', 'Lamard', 'lamard@mail.com', '06 11223344', 'abc',  'xyz', 'Paris', 'France', 1),
('ATOS', 'John','Doe','john.doe@mail.com','0713467982','abv', 'xyz', 'Bordeaux','France', 0),
('Sopra Steria', 'Jane', 'Smith', 'j.smith@mail.com', '0712345678', 'cba', 'wyx', 'Toulouse', 'France',1);


INSERT INTO orders (type_presta, designation, client_id, nb_days, unit_price, state)
VALUES
('Formation', 'Angular init', 2, 3, 1200, 0),
('Formation', 'React avancé', 2, 3, 1000, 2),
('Coaching', 'React Techlead', 1, 20, 900, 2),
('Coaching', 'Nest.js Techlead', 1, 50, 800, 1),
('Coaching', 'React Teachlead', 3, 35, 1500, 0),
('Coaching', 'Jakarta EE', 3, 42, 2300, 1),
('Coaching', 'Angular Techlead', 4, 27, 1800, 2),
('Formation', 'Symfony Basics', 3, 7, 800, 0),
('Coaching', 'PHP 8', 4, 14, 750, 1),
('Formation', 'Mobile development with Kotlin', 2, 30, 3500, 2);

SELECT * FROM clients;
SELECT * FROM orders;

-- 3: Afficher toutes les formations sollicités par le client M2i formation M2u information
SELECT * 
FROM orders
WHERE client_id = 2;
---
SELECT * 
FROM orders o
JOIN clients AS c
ON c.id = o.client_id
WHERE c.company_name ILIKE '%m2i%';

-- 4 : Afficher les noms et contacts de tous les contacts des clients qui ont sollicité un coaching
SELECT DISTINCT 
	c.first_name, c.last_name, c.email, c.phone 
FROM clients AS c
JOIN orders o
ON c.id = o.client_id
WHERE o.type_presta ILIKE '%coaching%';

-- 5: Afficher les noms et contacts de tous les contacts des clients qui ont sollicité un coaching pour les accompagnements React.js
SELECT DISTINCT 
	c.first_name, c.last_name, c.email, c.phone 
FROM clients AS c
JOIN orders o
ON c.id = o.client_id
WHERE o.type_presta ILIKE '%coaching%' AND o.designation ILIKE '%react%';

-- 6: Pour chacune des demandes de formation, afficher le prix UHT et prix TTC en se 
-- basant sur le unité Price(TJM) et le nombre de jours de prestation tout en sachant que la TVA est de 20%.
SELECT 
	designation, CONCAT(total_exclude_taxe, ' €'), CONCAT(total_with_taxe, ' €')
FROM orders
WHERE type_presta ILIKE '%formation%';

-- 7: Lister toutes les prestations qui sont confirmés et qui vont rapporter plus 30.000€
SELECT * 
FROM orders
WHERE state = 2 AND total_with_taxe > 30000;