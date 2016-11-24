# Le Formulaire en HTML

## Ouverture et fermeture

Le formulaire contenu dans une balise `form`

```HTML
<html>
<head>

</head>
<body>


  <form>

    <!-- Ici on met tout le formulaire-->

  </form>

</body>
</html>
```

## La balise `form` ouvrante est particulière, il faut lui rajouter des propriétés

```HTML
<form method="get" action="traitement.php">

  <!-- Ici on met tout le formulaire-->

</form>
```

### `method`

On a le choix entre `get`et `post`.

Si on met `get` les données du formulaire sont visibles dans l'URL.


Si on met `post` les données du formulaire ne sont pas visibles dans l'URL, mais au sein de la requète HTTP.


### `action`

Ce paramètre permet de définir la age de traitement des données du formulaire.

On précise l'adresse du script qui va traiter la données de l'utilisateur.



## Les champs de saisie


### les propriétés importantes

`name`: cela représente le nom du champ que l'on va récupérer lors du traitement.

`placeholder` : permet de mettre un texte dans le champ vide.


### Champ de type input (simple)


```HTML
<form method="get" action="traitement.php">

  <!-- champ de type input qui contient un email-->
  <input type="email" name="email">

  <!-- champ de type input qui contient un texte-->
  <input type="text" name="plat_favori">

  <!-- champ de type input qui contient un numéro de téléphone-->
  <input type="tel" name="telephone">

  <!-- champ de type input qui contient un mot de passe-->
  <input type="password" name="mot_de_passe">

</form>
```

### Champ de type input radio

```HTML
<form method="get" action="traitement.php">
  <input type= "radio" name="tarif" value="jour"> tarif de jour
  <input type= "radio" name="tarif" value="nuit"> tarif de nuit
  <input type= "radio" name="tarif" value="week-end"> tarif de week-end

</form>
```

`value` définir la valeur que l'on va récupérer dans le script de traitement.

On peut précocher un élément : on ajoute juste `checked` dans l'input que l'on souhaite précocher.


```HTML
<form method="get" action="traitement.php">
  <input type= "radio" name="tarif" value="jour"> tarif de jour
  <input type= "radio" name="tarif" value="nuit" checked> tarif de nuit
  <input type= "radio" name="tarif" value="week-end"> tarif de week-end

</form>
```
Ici on a "tarif de nuit" pré-coché.


### Champ de type input checkbox

On change juste la propriété type avec la valeur `checkbox`.

```HTML
<form method="get" action="traitement.php">
  <input type= "checkbox" name="tarif" value="jour"> tarif de jour
  <input type= "checkbox" name="tarif" value="nuit"> tarif de nuit
  <input type= "checkbox" name="tarif" value="week-end"> tarif de week-end

</form>
```


### Champ de type `textarea`

Cela permet de contenir un texte long.


```HTML
<form method="get" action="traitement.php">

  <input type= "checkbox" name="tarif" value="jour"> tarif de jour
  <input type= "checkbox" name="tarif" value="nuit"> tarif de nuit
  <input type= "checkbox" name="tarif" value="week-end"> tarif de week-end  

  <textarea name="biographie" rows="3"></textarea>
</form>
```

La propriété `row` elle définit le nombre de ligne du champ.

On peut écrire plus que 3 lignes, l'utilisateur ne verra juste pas ce qu'il écrit.

### Champ de type `select`

```HTML
<form method="get" action="traitement.php">

  <select name="annee_de_naissance">
    <option value="1">1</option>
    <option value="2">2</option>
    <option  value="3">3</option>
  </select>

</form>
```

On a aussi la possibilité de définir laquelle des options va être choisie à l'affichage avec la propriété `selected`


```HTML
<form method="get" action="traitement.php">

  <select name="annee_de_naissance">
    <option value="1">1</option>
    <option value="2" selected>2</option>
    <option  value="3">3</option>
  </select>

</form>
```

Ici 2 sera préselectionné.


### Champ de type input (envoi du formulaire)


```HTML
<form method="get" action="traitement.php">

  <input type="submit" value="OK">

</form>
```

On va avoir un bouton d'envoi avec le texte `OK`.


## CSS : mise en forme du formulaire

```HTML
<form method="get" action="traitement.php">

  <input type= "checkbox" name="tarif" value="jour" class="yo"> tarif de jour
  <input type= "checkbox" name="tarif" value="nuit" class="yo2"> tarif de nuit
  <input type= "checkbox" name="tarif" value="week-end"> tarif de week-end  

  <textarea name="biographie" rows="3" class="yo2"></textarea>
</form>
```

On rajoute des `class`et des `id` sur les éléments et on définit la mise en forme en css.
