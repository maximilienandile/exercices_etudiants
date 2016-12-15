# Gestion des formulaires

## Dans la vue


```html

<form name="authorizationForm" novalidate="" ng-submit="ctrl.sign_up(authorizationForm)">

  <input type="text" name="username" ng-model="ctrl.username"  required>

  <input type="password" name="password" ng-model="ctrl.password" >

    <button class="button button-full button-positive" type="submit">
      Sign In
    </button>

</form>

```

Il faut aller dans la vue et englober les champs par la balise `form`.
1. Chaque input a une directive `ng-model="nom_du_champ"`
2. dans la balise `form` ouvrante on va rajouter la directive `ng-submit="sign_up(authorizationForm)"`

## Dans le contôleur

```js
  this.sign_up = function(authorizationForm){
    console.log("pass :"+this.password);
    console.log("username :"+this.username);
  }
```
