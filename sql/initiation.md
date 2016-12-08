# Initiation :fonctionnement et principales commandes


## Les composantes d'une BDD

- Les tables
- Dans chaque table on a un nombre définit de colonnes
- Dans chaque table défit de lignes (enregistrement)

Le principe de base :
```
- Un type d'objet = une table
```

Par exemple :
- Une table `étudiant` colonnes : nom, prenom, email ...
- Une table pour les `cours` : inititulé du cours, niveau ....
- Une table `prof` : email, téléphone, adresse

## Clé étrangère et primaire

Dans une table il y a toujours une `clé primaire` c'est en général la colonne qu'on appelle `id`. C'est une clé qui permet d'identifier un enregistrement de manière.

On peut faire référence dans une table à une autre table via une `clé étrangère`. Par exemple dans ma table `cours`je vais avoir une colonne inititulée `id_prof`  qui fera référence à la clé primaire de la table `prof`.

## Les principales requêtes.

Comment accéder à l'interface d'administration `phpmyadmin`

1. Démarer MAMP
2. Cliquer sur "démarrer les serveurs"
3. Aller sur le site : http://localhost:8888/phpmyadmin


### Création d'une base de données

Attention : jamais de majuscule, ni d'accents , ni d'espaces (on remplace les espaces par des uderscores : `_`)!

A la place des espaces il faut mettre des `_` (snake)

```sql
CREATE DATABASE dbname;
```

### Détruire une base de données


```sql
DROP DATABASE dbname;
```


### Création d'une table

```sql
CREATE TABLE `lamia`.`teacher`
  (
     `id`      INT(11) NOT NULL auto_increment,
     `name`    VARCHAR(255) NOT NULL,
     `surname` VARCHAR(255) NOT NULL,
     PRIMARY KEY (`id`)
  )
engine = innodb;
```


### Comment choisir les types des colonnes

Il faut juste savoir ce qu'elles vont contenir.

- Entiers : `INT(11)`
- Caractères / texte court : `VARCHAR(255)`
- Texte long : `TEXT`
- DATE/heure : `TIMESTAMP`

### Insertion de données

```sql

INSERT INTO lamia.teacher (name, surname) VALUES ("Dupont", "Jean");

```

Cette requête va insérer Jean Dupont dans notre table des `teacher`s

#### Attention :
- On rajoute des `"` entre les valeurs à insérer.


### Sélectionner les données


### Requête type


```sql
SELECT colonne1, colonne2 FROM nom_de_la_table WHERE colonne1 LIKE "DDHDKHFHFFKJS"
```

La clause `WHERE` permet de donner une condition de recherche dans la table


```sql
SELECT * FROM teacher WHERE name LIKE "dupont"
```

- Le symbole `*` signifie toutes les colonnes

```sql
SELECT surname FROM teacher WHERE name LIKE "dupont"
```

=> Permet d'afficher tous les prénoms (surname) et les id de profs dont le nom de famille (name) est égal à `Dupont`

```sql
SELECT id, surname FROM teacher WHERE name LIKE "dupont"
```

=> Permet d'afficher tous les prénoms (surname) et les id de profs dont le nom de famille (name) est égal à `Dupont`


### Mise à jour des données


D'une façon globale on a :

```sql

UPDATE    TABLE   SET  Modifications_a_faire WHERE conditions_d_application_de_la_modification

```


```sql
UPDATE nom_de_la_base.nom_de_la_table SET colonne1 = 'Jeannot' WHERE colonne2 = 1;
```

```sql
USE nom_de_la_base;
UPDATE nom_de_la_table SET colonne1 = 'Jeannot' WHERE colonne2 = 1;
```

```sql
UPDATE lamia.teacher SET surname = 'Jeannot' WHERE id = 1;
```


### Supprimer une ligne ou des lignes

```sql
DELETE FROM nom_de_la_table WHERE colonne = 1
```

```sql
DELETE FROM lamia.teacher WHERE teacher.id = 1
```

### Jointure de deux tables

On veut pouvoir afficher les informations de deux tables lorsque dans la première table il y a une `clé étrangère` vers la deuxième table.

Par exemple :
- Première table : `chercheurs`
- Deuxième table : `sujet`

Dans `chercheurs`j'ai une colonne `id_sujet` qui contient une clé étrangère vers la table `sujet`.


```sql
SELECT * FROM chercheurs JOIN sujet ON sujet.id = chercheurs.id_sujet
```
Ici on affiche le contenu des deux tables.


Si on veut juste certaines colonnes :

```sql
SELECT sujet.denomination, chercheurs.nom FROM chercheurs JOIN sujet ON sujet.id = chercheurs.id_sujet
```

Ici on va afficher :
- La colonne `denomination` de la table `sujet`
- La colonne `nom` de la table `chercheurs`
