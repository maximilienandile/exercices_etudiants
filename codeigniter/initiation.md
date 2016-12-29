# Comment ajouter une page

Objectif créer une page qui ressort à l'adresse : http://monsite.com/index.php/test/yo . Il faut penser d'abord aux URL avant de penser aux pages elle même car c'est à partir de l'URL qu'on va pouvoir déterminer le nom du contrôleur à créer et aussi les méthodes qu'il va falloir créer.

Par exemple si on veut créer ces pages :
- http://monsite.com/index.php/materiel/list
- http://monsite.com/index.php/auth/login
- http://monsite.com/index.php/auth/signup
- http://monsite.com/index.php/welcome/


On va devoir créer les fichiers (contôleur) suivants :
- `application/controllers/Materiel.php`
- `application/controllers/Auth.php`
- `application/controllers/Welcome.php`




## Contrôleur

1. Dans le dossier `application/controllers` créer un fichier p.ex : `Test.php`. NB on remarque que le fichier contenant bnotre contrôleur porte le nom `Test` car notre url est http://monsite.com/index.php/**test**/yo

2. Ce fichier doit avoir la structure suivante :

```php
// Fichier Test.php dans application/controllers
defined('BASEPATH') OR exit('No direct script access allowed');
class Test extends CI_Controller {

  // obligatoire
	public function __construct() {
		parent::__construct();


	}

  public function yo(){

  }

}
```
**NB** : on remarque qu'on a créé une méthode publique `yo`
```php
public function yo(){

}
```
On a créé cette méthode parce qu'on souhaite avoir une page à l'adresse http://monsite.com/index.php/test/**yo**

#### Rappel

```ascii
http://monsite.com/index.php/materiel/list
                                 ^      ^
                                 |      |
                                 |      |
                                 |      +
                                 +      méthode list
                            Contrôleur   dans le contrôleur Materiel
                              Matériel

```


Dans le contrôleur `Materiel.php` il faudra créer une méthode
```php
public function list(){

}
```

Dans le contrôleur `Auth.php` il faudra créer deux méthodes
```php
public function login(){

}
public function signup(){

}

```

Dans le contrôleur `Welcome.php` il faudra créer une méthode
```php
public function index(){

}
```
## Vue

On va devoir créer les vues :
- http://monsite.com/index.php/materiel/list
- http://monsite.com/index.php/auth/login
- http://monsite.com/index.php/auth/signup
- http://monsite.com/index.php/welcome/

Il faut au final 4 vues.

Pour créer une vue c'est tout simple il faut créer un fichier dans le dossier `application/views`

Je te conseille de créer des dossiers pour chaque contôleur :

- un dossier `materiel`
- un dossier `auth`
- un dossier `welcome`

Dans ces dossier tu vas stocker les vues correspondantes :

- Dans le dossier `materiel` on va créer un ficher `list.php`
- Dans le dossier `auth` on va créer un ficher `login.php`
- Dans le dossier `auth` on va créer un ficher `signup.php`
- Dans le dossier `welcome` on va créer un ficher `index.php`

NB : ne pas oublier de mettre l'extension `.php`

Par exemple une vue type :

```html
<html>
  <head>

    <link rel="stylesheet" href="<?php base_url('assets/css/bootstrap.min.css') ?>">


  </head>

  <body>
    <h1> Materiel </h1>
    <img src="<?php base_url('assets/img/toto.png') ?>">

    <a href="<?php base_url('auth/signup') ?>">Signup</a>

  </body>
</html>

```

## Charger une vue dans le contrôleur


```php

public function login(){

  $this->load->view('auth/login');
}

```
