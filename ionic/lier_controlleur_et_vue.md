# Comment lier une action dans la vue a un contrôleur.


## Dans la vue

```html

<button class="button button-block button-dark"
  ng-click="ctrl.logintwitter()">
  twitter
</button>

```

- Ici dès qu'on clique sur ce bouton c'est la directive `ng-click` qui est lancée
- Dans la directive on précise quelle fonction du contrôleur doit être lancée
- ICI : `ctrl.logintwitter()`
- NB : on mets toujours `ctrl.` devant le nom de la fonction

### Pourquoi mettre ctrl. ?

Dans notre routeur on a mis ce `state`(une route = un état de l'application)
```js
.state('main.debug', {
  url: '/debug',
  views: {
    'tab-debug': {
      templateUrl: 'main/templates/debug.html',
      controller: 'DebugCtrl as ctrl'
    }
  }
});

```

## Dans le contrôleur

Pour récupérer l'action dans le contrôleur

```js
this.logintwitter=function(){
  alert("on a cliqué sur le boutton twitter")
}


```
