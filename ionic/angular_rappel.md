# Rappel : Angular


## Set up d'un projet;

Bower est un utilitaire qui s'execute depuis le terminal.
C'est un gestionnaire de dépendance. Il permet d'installer des frameworks (feuille css, feuille js....) directement depuis le terminal. Dans les faits il va créer un dossier `bower_components` dans lequel il va télécharger automatiquement (il faudra lui dire via le terminal).

```bash
# Permet d'initialiser BOWER
bower init
# Installer bootstrap
bower install bootstrap
# installer
bower install angular
```

## La structure de base d'un projet Angular

```html
<html lang="en" ng-app>
  <head>
    <meta charset="utf-8">
    <title>My HTML File</title>
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.css" />
    <script src="bower_components/angular/angular.js"></script>
  </head>
  <body>

    <p>Nothing here {{'yet' + '!'}}</p>

  </body>
</html>

```

`ng-app` est une `directive`. AngularJS s'incrustera donc dans la balise html.


## Contrôleur et modèle.

Dans AngularJS, notre contrôleur va contenir les données (on parle de modèle) de notre application.

Voici un contrôleur :

```javascript
// Define the `phonecatApp` module
var phonecatApp = angular.module('phonecatApp', []);

// Define the `PhoneListController` controller on the `phonecatApp` module
phonecatApp.controller('PhoneListController', function PhoneListController($scope) {
  $scope.phones = [
    {
      name: 'Nexus S',
      snippet: 'Fast just got faster with Nexus S.'
    }, {
      name: 'Motorola XOOM™ with Wi-Fi',
      snippet: 'The Next, Next Generation tablet.'
    }, {
      name: 'MOTOROLA XOOM™',
      snippet: 'The Next, Next Generation tablet.'
    }
  ];
});

```

Un contrôleur c'est une série de ligne de codes qui va gérer la logique et la données du template.
Dans le controller je vais définir les variables à transmettre au template.

## Template

```javascript
<html ng-app="phonecatApp">
<head>
  ...
  <script src="bower_components/angular/angular.js"></script>
  <script src="app.js"></script>
</head>
<body ng-controller="PhoneListController">

  <ul>
    <li ng-repeat="phone in phones">
      <span>{{phone.name}}</span>
      <p>{{phone.snippet}}</p>
    </li>
  </ul>

</body>
</html>

```

On appplique à une balise un contrôleur grâce à la directive (`ng-controller`).
On applique ici le contrôleur `PhoneListController` à la balise body.

Du coup dans la balise body , j'ai accès à toutes les données définie dans le contrôleur.


`ng-repeat="phone in phones"` est une directive permettant d'itérer sur un tableau de données.


```html
<li ng-repeat="phone in phones">
  <span>{{phone.name}}</span>
  <p>{{phone.snippet}}</p>
</li>
```
Ce morceau de code lorsqu'il va être interprété par angular va générer autant de balises `li` qu'il y a d'éléments dans la variables `phones`. Cette donnée a été définit dans le contrôleur. (donc on y a bien accès)

```html

<li

```
