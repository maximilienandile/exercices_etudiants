# Routing avec Ionic


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
