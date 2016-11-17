# Création d'un thème sur Drupal 8


## Creation du dossier

Pour initialiser un thème il faut créer un dossier dans `themes/custom`.

Par exemple créons le dossier `themes/custom/hello_world`

## Ajout du fichier `info.yml`

Dans le dossier de notre thème créer le fichier `hello_world.info.yml`

```
name: Awesome Theme
description: 'An awesome D8 theme.'
base theme: classy
package: Custom
type: theme
version: 1.0
core: 8.x
```

## Ajout de feuille css et de js au theme (création d'une librairie)

Pour ajouter du css :

1. Créer un dossier `css` et `js`
2. Créer un fichier `hello_world.libraries.yml`
```
my-lib:
  version: 1.x
  css:
    theme:
      css/yo.css: {}
  js:
    js/yo.js: {}
  dependencies:
    - core/jquery
```
Dans ce fichier on indique qu'il faut rajouter la feuille CSS `yo.css` dans le dossier `css` et `yo.js` dans le dossier `js`

## Lier la librairie au theme

Dans le fichier `hello_world.info.yml` rajouter la propriété `libraries`
```
name: Awesome Theme
description: 'An awesome D8 theme.'
base theme: classy
package: Custom
type: theme
version: 1.0
core: 8.x
libraries:
  - hello_world/my-lib
```

## Masquer des régions

La propriété `regions_hidden` permet d'opérer ce changement
```
name: Awesome Theme
description: 'An awesome D8 theme.'
base theme: classy
package: Custom
type: theme
version: 1.0
core: 8.x
libraries:
  - hello_world/my-lib
regions_hidden:
  - sidebar_first
```


## Ajouter un template de page

1. Créer un dossier `templates`
2. Dans ce dossier créer un fichier `node.html.twig`
