# Rappel HTML

## Organisation classique de la page


```HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="css/yo.css">
</head>
<body>

</body>
</html>
```

Moyen mnémotehnique :
- Tout est dans une balise englobante.
- Head = Tête : or on a toujours la tête sur les épaules
- Body = corps, le support de la tête
- CSS = maquillage, or on se maquille plus le visage que le corps , donc le CSS se mets dans Head


## La barre d'outil

Toujours penser barre de navigation, barre d'outil = `nav` balise.

## Balise figure

```
<figure>
  <img src="image.jpg" alt="" />
  <figcaption>Légende associée</figcaption>
</figure>
```

## Images

Ne pas oublier le texte alternatif. Sous la forme `alt="texte alternatif"`


## Les boutons FontAwesome

Pour rajouter des icônes de type "FontAwesome" il suffite d'aller les chercher sur le site :

```html
<i class="fa fa-step-forward" aria-hidden="true"></i>
```

Pour créer un bouton avec une icône FontAwesome :

```html
<button id="XXX"> <i class="fa fa-backward" aria-hidden="true"></i></button>
```

## Faire une liste de boutons

Consigne : Les boutons de la barre d'outil sont disposés les uns à côté des autres, utiliser Font Awesome pour les icônes des boutons.

```html
<ul>
  <li> <button > <i class="fa fa-step-forward" aria-hidden="true"></i> Next</button> </li>
  <li> <button > <i class="fa fa-step-forward" aria-hidden="true"></i> Next</button> </li>
  <li> <button > <i class="fa fa-step-forward" aria-hidden="true"></i> Next</button> </li>
  <li> <button > <i class="fa fa-step-forward" aria-hidden="true"></i> Next</button> </li>
</ul>

```

## Les intéractions

### Comment déclencher l'évènement appuyer sur un bouton, ou cliquer sur un lien ?

On utilise la propriété `onClick`.

```html
<a href="#" onClick="ouvrir_le_paiement();">Passer à la caisse</a>
```

Puis en javascript on définit la fonction ainsi :

```js
function ouvrir_le_paiement(){
  console.log("lien cliqué !!!");
}
```

## Rappels JS


### Où et comment intégrer le javascript dans la page ?

Juste avant la balise fermante body (`</body>`) (pour un chargement plus rapide de la page) :
```html
<script src="js/script.js" ></script>
```


### Ecriture d'une fonctions

```js
function ouvrir_le_paiement(){

}
```

### Afficher ou masquer un élément html

#### Pour masquer
```js
//Si on veut masquer le premier élément de la classe appBanner
document.getElementsByClassName('appBanner')[0].style.visibility = 'hidden';
//Si on veut masquer le premier élément d'id appBanner
document.getElementById('appBanner').style.visibility = 'hidden';
```

#### Pour afficher
```js
//Si on veut masquer le premier élément de la classe appBanner
document.getElementsByClassName('appBanner')[0].style.visibility = 'visible';
//Si on veut masquer le premier élément d'id appBanner
document.getElementById('appBanner').style.visibility = 'visible';
```

### Structure conditonnelles


```js

if(CONDITION){
  // si la condition est vérifiée
  //
} else {
  // sinon
  //
}

```

NB : la condition est le plus souvent un test:

```js
//SI isToolbarVisible == true
if(isToolbarVisible == true) {
  // ALORS
  //(1)

}else {
  // SINON
  //(2)
}
```
Ici la condition c'est `isToolbarVisible == true`. C'est un test, si dans la variable `isToolbarVisible`on a `true` alors la condition est vérifiée, on execute le bloc IF (1). Sinon on execute le bloc (2).
Le bloc (2) n'est pas obligatoire !!!!


`==` est un opérateur de comparaison. (`>`, `<`, `<=`...). Mais attention `=` est opérateur d'affectation.

### L'utilisation bien pratique des flags.

En JS il est parfois pratique de définir une variable globale qui va servir de `flag`. Un flag est en fait un indicateur du statut d'un élément (ex: le menu est visible.)

On peut ensuite se servir de ce flag pour définir un comportement :
```js
// Par défaut l'image est visible
var is_image_visible = true

// Cette fonction sera effectué à chaque fois que l'on clique sur le bouton (afficher/masquer l'image)
function on_click_btn(){
    // On va tester la valeur de notre flag
    // Si il vaut true
    if(is_image_visible==true){
      // ALORS on va masquer notre image (élément d'ID mon_id)
      document.getElementById('mon_id').style.visibility = 'hidden';
      // On passe notre flag à False
      is_image_visible=false

    }else {
      // SINON is_image_visible= False
      // Cela signifie que notre image est masquée
      // on va afficher notre image (élément d'ID mon_id)
      document.getElementById('mon_id').style.visibility = 'visible';
      // Vu qu'on a rendu notre image visible
      // On passe notre flag à True

      is_image_visible=true
    }
}
```
