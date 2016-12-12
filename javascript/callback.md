# Les callbacks

## Définir une fonction avec un callback

```js

function ma_func(test,callback){

    // une instruction super longue 2 heures
    //
    // si réussite (A)
    callback(null,"mise à jour réussie");

    // si échec (b)
    callback("il y a eu une erreur", "Problème")

}
```

## Execution d'une fonction avec un callback

```js

ma_func("yo",function(err,message){
  if(err){
    // err = "il y a eu une erreur"
    // il n'est pas null
    // on a échoué
  }else {
    // err = null (A)
    // on a réussi !!!!!
  }
})
```
