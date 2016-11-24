
# CSS : cascades et héritages

## Balise a : hover, selected ...

:link (défaut)
:visited (visité)
:hover (survol)
:active (actif)


## Héritage

Ici les propriétés css seront appliquées aux balises `a` qui sont dans la classe `ma_classe`

```css
.ma_classe a {

  /* Prop */

}
```


```css
ul .ma_classe {

  /* Prop */

}
```

Ici les propriétés css seront appliquées aux éléments de classe `ma_classe` qui sont dans la balise `ul`


## Application de propriétés à des éléments multiples via une seule déclaration

```css
li, .yo {

}
```

Ici les propriétés css seront appliquées aux éléments de classe `yo` ET aux balises `li`

## Ciblage de toutes les balises d'une classe spécifiques

On peut appliquer du style à toutes les balises qui ont une classe déterminée :

```css
a.yooooo {

}
```
Ici les propriétés css seront appliquées aux balises `a` portant la classe `yooooo`


## Cibler tous les éléments enfants

```css
#container * {
}
```

Ici les propriétés css seront appliquées à tous les éléments imbriqués dans la div d'id `container`

## Sélecteur Adjacents


```css
ul + p {
}
```

Ici les propriétés css seront appliquées aux premières balises `p` situées à l'intérieur des balises `ul`

## Sélectionner les enfants directs

```css
div#alfred > p {
}
```

Ici les propriétés css seront appliquées aux enfants directs (de type `p`) de la div d'id `alfred`

## Sélectionner les éléments suiveurs

```css
ul ~ p {

}
```
Ici les propriétés css seront appliquées seulement aux balises `p` qui suivent un `ul`.

NB : peu utilisé.


## Sélectionner seulement les éléments qui ont une propriété donnée


``` css
a[title] {
 color: green;
}
```
Ici les propriétés css seront appliquées seulement aux balises `a` qui ont la propriété title.


## Sélectionner seulement les éléments qui ont une propriété donnée qui vaut une certaine valeur

``` css
a[href="http://google.com"] {

}
```

Ici les propriétés css seront appliquées seulement aux balises `a` qui ont la propriété `href` valant `http://google.com`.
