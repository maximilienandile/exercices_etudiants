# Initiation HTML

HTML = Hypertext Language Markup.

C'est le squelette d'une page web. Tous les sites sont fait de code HTML. Pour s'en assurer faire clic droit sur n'importe quelle page et "afficher le code source".

## Un langage qui fonctionne en mode balises

En HTML on a à notre disposition une multitudes d'éléments : les paragraphes, les titres, les tableaux, les formulaires ... On va pouvoir mettre ces éléments sur notre page et ils auront une mise en forme par défaut automatique. On pourra les designer comme on le souhaite grâce à CSS (on appliquera du style aux éléments HTML).

### Balises ouvrantes et fermantes

HTML fonctionne par balises. Chaque élément est représenté par une balise ouvrante et une balise fermante.

```html
<p>Voici un paragraphe</p>
<h1> Voici un titre de niveau 1</h1>
```
Ici on a deux éléments : un `paragraphe` et un `titre de niveau 1`.

L'élément paragraphe est représenté par la balise ouvrante `<p>` et la balise fermante `</p>`. Le contenu du paragraphe est "Voici un paragraphe".

L'élément titre de niveau 1 est représenté par la balise ouvrante `<h1>` et la balise fermante `</h1>`. Le contenu du titre de niveau 1 est " Voici un titre de niveau 1".


### Imbrication des balises

On va devoir imbriquer les balises les unes dans les autres. Par exemple on veut mettre un lien dans un paragraphe.

```html
<p> Une conclusion qui montre qu’une partie de la jeune génération est prête à se retrousser les manches et à utiliser ses mains parce qu’elle n’a plus envie de s’épuiser (burn-out), de s’ennuyer (bore out) ou de faire un travail inutile (bullshit jobs, générateurs de brown-out). En somme, des digital natives prêts à faire autre chose de leurs doigts que taper sur un clavier.
<a>En savoir plus</a>
</p>

```


### Les propriétés des balises

On peut rajouter dans nos balises HTML des `propriétés`. Par exemple lorsqu'on crée un lien il faut bien préciser la page de destination du lien.

```html
<a href="http://www.google.fr" class="test" id="yoooooooo"> Aller sur google</a>
```
Ici on a rajouté la propriété `href` dont la valeur est égale à `http://www.google.fr`

Cela nous permet de rediriger le visiteur vers la page à l'adresse `http://www.google.fr`.

Il existe d'autres propriétés : ex : `class`, `id`. On peut mettre plusieurs propriétés dans une balise.

### Exceptions


Attention : il y a des exceptions qui confirment cette règle. Il y a des balises "auto-fermantes".

ex :
```html
<img />
```
Ici on a l'élément image (on importe une image dans la page). Cela se traduit en HTML par une seule balise qui est autofermante.

## Le document HTML

Pour faire du HTML, il faut créer un fichier avec l'extension `.html` et dans ce fichier on peut écrire notre code HTML. Lorsqu'on ouvre ce fichier sur notre ordinateur il va s'ouvrir automatiquement avec le navigateur (ex: chrome). otre fichier est une page web.

### Elements de base d'une page HTML

```html
<!DOCTYPE html>
<html>

  <head>
    <title>Titre dans l'onglet</title>
    <meta charset="utf-8"/>
  </head>

  <body>

  </body>

</html>
```

### head

C'est la tête pensante de notre page. On y précise le titre de la page (ce qui apparait dans Google, et sur l'onglet - mais pas dans le contenu de la page)

### body

C'est le corps de la page. Tous les éléments (balises) que l'on met dans body vous apparaitre dans la page.


## Les éléments de base

### Les listes

#### Les listes à puce

```html
<ul>
  <li> element 1 de ma liste </li>
  <li> element 2 de ma liste </li>
  <li> element 3 de ma liste </li>
</ul>

```

### Les listes numérotées

```html
<ol>
  <li> element 1 de ma liste </li>
  <li> element 2 de ma liste </li>
  <li> element 3 de ma liste </li>
</ol>

```

### Les images

#### Les images hébergées dans le dossier de travail

```html
<img src="image_1.png"/>

```
```html
<img src="image_1.png" width="100%"/>

```
Si l'image est placée dans un dossier (p.ex le dossier `img`) on doit préciser la valeur de la propriété `src` de la manière suivante :

```html
<img src="img/image_1.png"/>

```
`img/image_1.png` est appelé le chemin du fichier.

#### Les images hébergées sur le web

```html
<img src="http://www.google.fr/image_1.png"/>

```

### Italique et gras


####Italique

```html
<em> Texte en italique </em>

```

#### gras

```html
<strong> Texte en italique </strong>
```
###


### Les liens

#### Les liens vers une page html interne au site

```html
<a href="page1.html"> Aller sur la page 1 de mon site</a>
```

#### Les liens externes`

```html
<a href="http://www.gogole.fr"> Aller sur la page 1 de mon site</a>
```
