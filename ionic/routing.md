# Routing avec Ionic

Il faut modifier le fichier `main.js`

```javascript
var example = angular.module('starter', ['ionic'])
    .run(function($ionicPlatform) {
        $ionicPlatform.ready(function() {
            // Stuff in here
        });
    })
    .config(function($stateProvider, $urlRouterProvider) {
        $stateProvider
            .state('login', {
                url: '/login',
                templateUrl: 'templates/login.html',
                controller: 'LoginController'
            })
            .state('users', {
                url: '/users',
                templateUrl: 'templates/users.html',
                controller: 'UserController'
            })
            .state('user', {
                url: "/users/:userId",
                templateUrl: "templates/user.html",
                controller: "UserController"
            });
        $urlRouterProvider.otherwise('/users');
    });

```

## Pour rajouter une route

Il faut ajouter un `.state`

```javascript
.state('route2', {
    url: "/route2",
    templateUrl: "templates/route2.html",
    controller: "Route2Controller as ctrl"
});
```
