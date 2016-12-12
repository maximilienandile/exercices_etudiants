# Comment créer une application sur express avec le générateur de petecoop

## Partir de la vue

1. Créer un fichier `.jade` dans le dossier `app/views`
2. Pour écrire du Jade s'aider de ce site : http://html2jade.org/


## Ensuite on crée la route

1. Ouvrir le fichier `controllers/home.js`
2. Pour rajouter une route à notre contrôlleur, il faut rajouter ce snippet à la suite :

```js
router.get('/ma/route', function (req, res, next) {
  res.render("nom_du_template")
});
```

- On a une variable `router`
- On appele la méthode `get`
- Cette méthode prends en paramètre une chaine de caractère `/ma/route` qui représente l'adressage de notre route. (ce qu'il va falloir rentrer dans le navigateur pour accéder à la page)
- Le deuxième est une fonction anonyme.
- Dans cette fonction on a accès à 3 paramètres `req, res, next`
- A partir de ces paramètres on peut envoyer une vue au navigateur.
`res.render("nom_du_template")` . Ici on renvoit la vue `nom_du_template.jade`
