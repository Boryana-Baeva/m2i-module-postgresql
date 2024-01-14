# TP 4

Nous allons modéliser une base de données, la peupler avec des données, et rédiger des requêtes pour répondre à certaines questions sur nos données. Les données concernent des titres de films. Le jeu de données fourni contient une liste de films et une liste d'acteurs. Votre tâche consiste à :
1. Modéliser la base de données qui stockera ces données dans au moins 4 tables differentes.
2. Remplir vos tables avec les données fournies.
3. Rédiger des requêtes SQL pour répondre aux questions énumérées [ci-dessous](#Écrivez-des-requêtes-SQL-pour-accomplir-ce-qui-suit).

### Films

1. The Great Gatsby,Drama/Romance,2013, 7.2
2. Shutter Island,Mystery/Thriller,2010
3. La La Land,Drama/Musical,2016, 8.0
4. A Beautiful Mind,Biography/Drama,2001, 8.2
5. The Shape of Water,Adventure/Drama,2017
6. Blade Runner 2049,Sci-Fi/Thriller,2017
7. Jurassic Park,Adventure/Sci-Fi,1993
8. Fight Club,Drama,1999, 8.8
9. The Matrix,Action/Sci-Fi,1999, 8.7
10. The Godfather,Crime/Drama,1972, 9.2
11. Pulp Fiction,Crime/Drama,1994, 8.9
12. The Dark Knight,Action/Crime,2008, 9.0
13. The Dark Knight Rises,Action/Crime,2012, 8.4
14. Forrest Gump,Drama/Romance,1994, 8.8
15. Goodfellas,Biography/Crime,1990, 8.7
16. Saving Private Ryan,Drama/War,1998, 8.6
17. Gladiator,Action/Adventure,2000, 8.5
18. Titanic,Drama/Romance,1997, 7.8
19. The Revenant,Action/Adventure,2015, 8.0
20. Spider-Man,Action/Sci-Fi,2002, 7.4
21. Dunkirk, Action/History,2017, 7.8
22. Inception,Action/Adventure,2010, 8.8
23. Wonder Woman,Action/Adventure,2017, 7.4

### Acteurs

1. Tobey Maguire: YYYY-MM-DD (Not provided), a joué dans Spider-Man, The Great Gatsby
2. Willem Dafoe: YYYY-MM-DD (Not provided), a joué dans Spider-Man
3. Leonardo DiCaprio: November 11, 1974 (1974-11-11), a joué dans The Great Gatsby, Shutter Island, Titanic, The Revenant, Inception
4. Cillian Murphy: May 25, 1976 (1976-05-25), a joué dans Dunkirk, The Dark Knight
5. Kate Winslet: October 5, 1975 (1975-10-05), a joué dans Titanic
6. Russell Crowe: April 7, 1964 (1964-04-07), a joué dans A Beautiful Mind, Gladiator
7. Tom Hanks: July 9, 1956 (1956-07-09), a joué dans Forrest Gump, Saving Private Ryan
8. Matt Damon: October 8, 1970 (1970-10-08), a joué dans Saving Private Ryan
9. Samuel L. Jackson: December 21, 1948 (1948-12-21), a joué dans Pulp Fiction, Goodfellas
10. Robert De Niro: August 17, 1943 (1943-08-17), a joué dans Goodfellas
11. Gal Gadot: April 30, 1985 (1985-04-30), a joué dans Wonder Woman
12. Christian Bale: January 30, 1974 (1974-01-30), a joué dans The Dark Knight, The Dark Knight Rises
13. Joseph Gordon-Levitt: February 17, 1981 (1981-02-17), a joué dans The Dark Knight
14. Tom Hardy: September 15, 1977 (1977-09-15), a joué dans Dunkirk, The Dark Knight Rises, The Revenant, Inception
15. John Travolta: February 18, 1954 (1954-02-18), a joué dans Pulp Fiction
16. Keanu Reeves: September 2, 1964 (1964-09-02), a joué dans The Matrix,
18. Laurence Fishburne: July 30, 1961 (1961-07-30), a joué dans The Matrix,
19. Brad Pitt: December 18, 1963 (1963-12-18), a joué dans Fight Club,
20. Ryan Gosling: November 12, 1980 (1980-11-12), a joué dans  La La Land, Blade Runner 2049
21. Al Pacino: April 25, 1940, a joué The Godfather
22. Robin Wright: April 8, 1966 (1966-04-08), a joué dans Forrest Gump, Wonder Woman

## Écrivez des requêtes SQL pour accomplir ce qui suit

1. Liste des films par titre, puis par année. 

![image](https://gist.github.com/assets/13703962/55e880bf-0c64-4cc2-9579-8810d9c29074)

2. Liste des films qui incluent le genre "Drama" dans leurs catégories.

![image](https://gist.github.com/assets/13703962/fc1f40a9-f4ef-4843-b182-3656f8294bf5)

3. Liste des films qui incluent les genres "Action" et "Aventure" dans leurs catégories.

![image](https://gist.github.com/assets/13703962/1ab0907a-dbfb-4af9-911c-c858b3932033)

4. Liste des films dont le titre commence par "The".

![image](https://gist.github.com/assets/13703962/a2a6cc77-43e9-4f25-8f3d-63c9b7fcbf71)

5. Les id des 3 films les mieux notés.

![image](https://gist.github.com/assets/13703962/639dec00-e2df-4625-ad3d-21cb9771e4ef)

6. Le film le plus ancien.

![image](https://gist.github.com/assets/13703962/3459afa3-8a24-4456-b89b-795ec9db883a)

7. L'acteur le plus jeune.

![image](https://gist.github.com/assets/13703962/6dfe30ea-24c1-4c76-a50b-bdd6feb79715)


8. Liste des films sortis dans les années 1990.

![image](https://gist.github.com/assets/13703962/6c7ad4de-921d-4a3d-9e19-0944a5e9482f)

9. Les films sortis entre 2010 et 2015.

![image](https://gist.github.com/assets/13703962/b9c80db1-5227-4ae9-8172-bed21e774c4a)

10. Quelle est l'année la plus prolifique pour la réalisation de films dans ce jeu de données ?

![image](https://gist.github.com/assets/13703962/7d0218d5-4e09-419e-b28c-2d060e445696)

11. Combien de films ont été réalisés avant l'année 2000?

![image](https://gist.github.com/assets/13703962/eed1d203-e88b-4758-80ba-39d7d2511915)

12. Quel âge a chaque acteur ?

![image](https://gist.github.com/assets/13703962/075ae174-5766-4285-99cc-5feafa033b03)

13. Quel est l'âge moyen des acteurs ?

![image](https://gist.github.com/assets/13703962/8703aac2-8537-4d15-a8e8-05978c4131f4)

14. Quels sont les âges minimum et maximum des acteurs ? Utilisez une seule requête.

![image](https://gist.github.com/assets/13703962/37d69a5a-ed9d-43b8-9ad5-8948a16dca85)

15. Pouvez-vous m'aider à vous rappeler un film avec "2049" dans son titre ?

![image](https://gist.github.com/assets/13703962/a2249b27-9afc-443e-88c4-70cb05624e55)

16. Quelles sont mes options pour regarder des films de crime et de biographie ?

![image](https://gist.github.com/assets/13703962/3fb1d296-8a18-4464-86b5-cca83ef6cfd2)

17. Utilisez la clause CASE pour répertorier les entrées dans la table des notes comme suit : >= 9 Génial, > 8,5 Très bien, >= 7 Bien, <= 5 Ennuyeux.

![image](https://gist.github.com/assets/13703962/6781a92f-48b8-47bd-b1b0-9e86ae2b387c)

18. Collecter la liste des acteurs et les films dans lesquels ils ont joué.

![image](https://gist.github.com/assets/13703962/7ccaebde-35ab-4a64-b130-67b28b6d55b5)

