# Les bases de PHP

PHP est un programme installé sur un serveur web. Le rôle du PHP est d'ajouter sur une page web (une page HTML) du dynamisme.

Par exemple afficher la date du jour via une fonction php sans avoir à la changer tous les jours.

A chaque fois que l'on va sur une page php avec notre navigateur, les instructions PHP qui sont dans cette page sont interpétés par le moteur PHP et le résultat d'interprétation est rendu au navigateur de l'utilisateur.

PHP s'execute du côté du serveur. Il ne s'éxecute du côté du client.

Dans une page codée en HTML on est libre de rajouter des morceaux de code PHP qui seront donc interprétés par le serveur et rendu au navigateur du client directement.

EX  un ficher qu'on appelle document.php
```html
<!DOCTYPE html>

<html>

	<head>


		<title> Mon titre</title>

	</head>

	<body>

		<h1> Titre </h1>

		<?php
			echo "Hello";

		?>




	</body>



</html>

```

IMportant : lorsque je vais sur mon navigateur et que je demande la page document.php (sur le site : lemonde.fr), je tape dans le navigateur : http://www.lemonde.fr/document.php
1. Le navigateur envoie une requête au serveur du Monde.
2. Le serveur du Monde récupère la page document.php
3. Le serveur passe cette page au moteur PHP
4. PHP il va chercher les balises PHP dans la page <?php ?>
5. Il execute le code à l'intérieur de ces balises.
6. PHP refile le résultat d'interprétation au serveur.
7. Le serveur le renvoit au client.

Pour faire du PHP on va donc s'installer un serveur local : MAMP.

En tant que développeur on crée une multitude de page .php et on les place sur notre serveur.

# Les bases d'un script php

```php

<?php

echo "Hello";

?>
```
On peut aussi avoir cette notation

```php
<?

echo "Hello";

 ?>
```
Ou encore :

```php
<?= "Hello world"  ?>

```
Règles :

1. On mets le script à l'intérieur de <?php et ?>
2. Une instruction par ligne (pour la lisibilité)
3. Chaque instruction est terminée par un ;
4. On déclare une variable de la manière suivante :
```php
-> $a = 3
// ici on affecte la valeur trois à la variable $a
// ON note que chaque variable commence par un $
```

- Manipulation du echo

echo est une fonction qui provient du coeur de PHP.
Elle permet d'afficher des informations à l'écran.

```php
echo "ce que l'on veut ";
```

- On peut afficher une chaine de caractère
- On délimite notre chaine de caractère par des guillemets.
- On eput choisir comme délimiteur la double guillemet => ""
- On peut aussi chosir la version simple : => ''
- Si on choisit l'une ou l'autre il faut rester consistant ! et bien voir en fait que si mon délimiteur est " ", je ne peux pas rajouter dans ma chaine de carctère une double guillemet. Et inversement.
- On peut toutefois le faire mais il faut échapper cette guillemet.

ex :
```php
echo 'ce que l\'on veut ';

```

Autre point super important : l'incorporation de variables dans les chaines de caractère.

```php
$nom = "Melissa";
echo "Bonjour ".$nom." comment vas tu ";
// affichera : Bonjour Melissa comment vas tu

// version 2 :


$nom = "Melissa";
echo 'Bonjour '.$nom.' comment vas tu ';
// affichera : Bonjour Melissa comment vas tu
```

## On a les structures de code conditionnelles suivantes :

a- Condition simple  SI qqc est VRAI ALORS faire qqc.

qqc est Vrai = c'est un test que l'on fait en général sur une variable
ex : $a==1
On mets un doubel égal pour signifier qu'il s'agit d'un test
On vérifie ici que la variable $a est égal à 1.


```php

<?php

if($a==1){

	// Les instructions si $a est bien égal à 1
} else {

	// les instructions qui seront executées dans le cas contraire.
}

?>
```


## Les itérations ou les boucles

```php
<?php
for ($i = 1; $i <= 10; $i++) {
    echo $i;
}
?>
```
- Une boucle pars toujours d'une variable compteur en générale appelée $i qui va être incrémentée (on ajoute 1 à chaque fois) jusqu'à ce qu'une condition soit vérifiée. Ici la condition qui doit être vérifiée est : $i <= 10.
- On va répéter 10 fois les instructions entre les crochets.

Voici une variante :
```php
<?php
for ($i = 1; $i <= 10; $i=$i+2) {
    echo $i;
}
?>
```


# Les super variables (ou les variables glogales)

Ce sont des variables comme les autres mais elles s'écrivent toujours ainsi :

```php
$_XXX

```
C'est en général des variables de type Array (ou tableau)

```php
$_GET
$_POST
$_SESSION
$_SERVER
```

Toutes ces variables sont accessibles d'office dans la page.
Sauf `$_SESSION` pour laquelle il faut mettre à chaque fois (en haut de la page ):
session_start();

```php
echo $_GET["test"];
```

cela affichera la valeur test contenu dans l'url de la page.

ex :
ma_page.php

Je me rends sur mon navigateur : http://localhost:8888/ma_page.php?test=yo&test2=123

Si dans ma page j'ai
```php

echo $_GET["test"];
```
Alors "yo" va s'afficher dans la page


On va pouvoir faire autre chose que de l'affichage comme un test :

```php

if($_GET['test2']==1){

	// Les instructions si $a est bien égal à 1
} else {

	// les instructions qui seront executées dans le cas contraire.
}
```

Il est d'usage de tester l'existence de ces variables avant de les utiliser pour éviter les erreurs fatales.

```php
if(isset($_GET['test2'])){

	echo $_GET['test2'];
}else {


}
```
# Conseils

1. Eviter la panique, un script est idiot, bcp plus idiot que vous
2. La machine est idiote. elle comprends des instructions simples.
3. Face à l'ennoncé il faut d'abord écrire la version statique de la page afin de visualiser ce que cela représente.
4. Ensuite on repère les éléments répétés,
5. Pour un élément répété il y aura toujours une boucle for a réaliser.
6. Bien écrire les balises HTML jusqu'à la fin dans la fonction echo et procéder seulement après à l'intégration de variables dans la chaine de caractères.
7. Bien faire attention aux guillemets.
