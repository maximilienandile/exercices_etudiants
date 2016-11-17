
# Création d'un module custom sur Drupal 8

## Creation du dossier dans la structure de fichier

1. Créer un dossier dans le dossier `modules`.
2. Nommer ce dossier du nom de votre module : p.ex : `hello_world`

## Création du fichier d'info

Afin que Drupal se rende compte de l'existence du module. Il faut ajouter un fichier `hello_world.info.yml` dans le dossier.


Voici un exemple :
```
name: Hello World Module
description: Creates a page showing "Hello World".
package: Custom

type: module
core: 8.x
```

## Vérification de la détection du module.

Il faut se rendre à l'adresse : `http://localhost:8888/drupal-8.2.3/admin/modules` pour vérifier que le module est bien listé.


## Dossier des controleurs


Les contrôleurs sont dans le dossier `src/Controller/`.

## Création d'un controleur

Créer un fichier `HelloController.php` dans le dossier `src/Controller/`.

```
<?php
/**
 * @file
 * Contains \Drupal\hello_world\Controller\HelloController.
 */

namespace Drupal\hello_world\Controller;

use Drupal\Core\Controller\ControllerBase;

class HelloController extends ControllerBase {
  public function content() {
    return array(
        '#type' => 'markup',
        '#markup' => $this->t('Hello, World!'),
    );
  }
}
```
Le controleur n'est pour l'instant pas branché

## Branchement du controleur via le fichier routing

On doit créer un fichier de routing pour créer une route (une url) pour notre page. C'est dans ce fichier qu'on précise le controleur qui sera activé.

Ce fichier se place dans le dossier : `modules/hello_world`. il se nomme `hello_world.routing.yml`.

Ex :
```
hello_world.content:
  path: '/hello'
  defaults:
    _controller: '\Drupal\hello_world\Controller\HelloController::content'
    _title: 'Hello World'
  requirements:
    _permission: 'access content'

```
`path`: définit l'url , `_controller`: le controleur déclenché.
