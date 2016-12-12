# Comment créer et utiliser les promesses


## Définition d'une fonction avec une promesse


```js
var Promise = require('bluebird');

function division(numerateur,denominateur){
  return new Promise(function (resolve, reject) {

    if(denominateur == 0){
      //(B)
      reject('On ne peut pas diviser par zero');
    } else {
      //(A)
      var resultat = numerateur/denominateur
      resolve(resultat);
    }

  }
}
```

## Execution


```js

division(6,7)
  .then(
  function(resultat){
    //(A)
    console.log(resultat);
  },
  function(error){
    //(B)
    console.log(erreur);
  }
)

```
