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
<a href='http://www.google.fr'> Aller sur google</a>
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
  </head>

  <body>

  </body>

</html>
```

### head

C'est la tête pensante de notre page. On y précise le titre de la page (ce qui apparait dans Google, et sur l'onglet - mais pas dans le contenu de la page)
