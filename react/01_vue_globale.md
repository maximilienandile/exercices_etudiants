# Architecture d'un projet React & Redux

## La base de notre application

Notre projet contiendra une série de fichiers javascripts :
Par exemple :
- composant1.js
- composant2.js
- React.js (librairie react)
- Redux.js (librairie Redux)

Cette base est développée avec la version `ES6` de javascript.

Cette version n'est pas supportée par les navigateurs qui supportent `ES5`.

## La nécessité de `transpiler` notre code

Deux programmes : `webpack` et `Babel` vont nous permettre de convertir notre code en version exploitable par le navigateur.


## La version de production exploitable dans les navigateurs

Nous aurons donc après la conversion une version de prod du code qui peut s'exécuter dans le navigateur. Il s'agira d'un fichier javascript. Par exemple `application.js`
