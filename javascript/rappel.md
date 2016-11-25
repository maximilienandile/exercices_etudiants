

# Javascript

## Les variables

### Les chaines de caractères

```javascript
var j = "truc" // Une variable de type string = chaine

```

### Les chiffres

```javascript
var nombre = 13 // Une variable de type string = chaine
```

### Les objets

```javascript
var mon_telephone = {} // Une variable de type objet.
// Après on peut définir des propriétés
mon_telephone.marque = "iPhone";
mon_telephone.taille = "6 pouces"
// Il y a autant de propriété qu'on souhaite....

```

## Les conditions : `if`et les `else`

```javascript

if (variable == 1) {

  // ici on mets les instructions
  // qui vont être executé si la condition est vérifiée

} else {
  // ici on mets les instructions
  // qui vont être executé si la condition n'est pas vérifié

}
```



## Les fonctions


### Définition

```javascript

function connexion(email,mot_de_passe){

  // Chercher dans la base de données si il y a un utilisateur qui
  // a le mot de passe  = "mot_de_passe" et l'email = "email" correspondant.
  // si on trouve l'utilisateur =>
  if(utilisateur_trouve){
      return true;
  }else {
    return false
  }

}
```

### Execution


```javascript

var resultat_execution= connexion("Joe@joe.com","hello");
if (resultat_execution){
  // renvoyer vers la page d'accueil
} else {
  // renvoyer vers une autre page
}


```
