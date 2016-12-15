# Firebase scripts utiles

## Login avec email et mot de passe

```js
this.auth = $firebaseAuth();
this.auth.$signInWithEmailAndPassword("my@email.com", "password").then(function(firebaseUser) {
  console.log("Signed in as:", firebaseUser.uid);
}).catch(function(error) {
  console.error("Authentication failed:", error);
});

```

## Envoi d'un email de récupération du mot de passe

1. Sur le bouton réupérer mon mot de passe il faut ajouter le lien avec le controôleur
2. dans la vue : Rajouter la balise form autour de l'input
3. dans le contrôleur :  ajouter la fonction avec le contenu suivant :

```js
this.auth = $firebaseAuth();
this.auth.$sendPasswordResetEmail("my@email.com").then(function() {
  console.log("Password reset email sent successfully!");
}).catch(function(error) {
  console.error("Error: ", error);
});


```
