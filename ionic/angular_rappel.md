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


`ng-repeat="phone in phones"` est une directive permettant la répétition d'éléments
