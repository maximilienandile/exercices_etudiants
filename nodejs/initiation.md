# Comment initialiser un projet Nodejs

## Installer un module npm

### Installation locale (dans le dossier de l'application)
```bash
cd mon/dossier
npm init
npm install nom_du_module --save
```

`npm init` va générer un fichier `package.json` + créer un dossier `node_modules`(dossier d'installation des modules).
Dans le fichier json est déclaré l'ensemble des modules utilisés.

### Installation d'un module de manière globale.

Les modules globaux sont installés pour tous les projets sur ton ordinateur.

```bash
sudo npm install nom_du_module -g
```

Le flag `g` signifie globale

Erreur type : `EACCESS` => il faut répéter la commande avec sudo.


## Utilisation de yeoman

http://yeoman.io/generators/

Yeoman est une bibliothèque de générateurs (qui permet de produire des scaffold).

### On installe un générateur via la ligne de commande

Par exemple on install celui pour faire une appli avec Express :

```bash
npm install -g generator-express
```

### Générer le scaffold via le générateur

```bash
cd mon/dossier
yo express
```

Cela va générer toute la structure de fichier de notre projet.
Cela va installer `bower`(gérer les dépendances front) et des modules npm. et `Gulp` (ou `grunt`)


## Lancement de l'application


Une fois le boilerplate bien installé on lance l'application via `nodemon`

```bash
cd mon/dossier
nodemon
```

Nodemon surveille tous les fichiers de ton projet et redémarre automatiquement en cas de changement sur un fichier.

# Les modules

## Comment utiliser un module (installer via npm) dans un script

1. Installer via npm
2. Faire le require dans la page où on souhaite utiliser le module :
3. Faire le require tout en haut de la page

```js
var nom_du_module = require('nom_du_module')

```

## Comment utiliser un module que l'on a créé nous même

1. Faire le require dans la page où on souhaite utiliser le module :
2. Faire le require tout en haut de la page

```js
var nom_du_module = require('./mes_modules/nom_du_module')

```
