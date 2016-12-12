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
document.getElementsById('appBanner')[0].style.visibility = 'hidden';
```

#### Pour afficher
```js
//Si on veut masquer le premier élément de la classe appBanner
document.getElementsByClassName('appBanner')[0].style.visibility = 'visible';
//Si on veut masquer le premier élément d'id appBanner
document.getElementsById('appBanner')[0].style.visibility = 'visible';
```
