# Les fonctions

## Pourquoi des fonctions

- Une fonction c'est une machine qui permet de réaliser une tâche
- On veut souvent réaliser plusieur fois une tâche sans avoir à tout réécrire à chaque fois.
- Une fonction = une tâche
- Une fonction a souvent (pas toujours) besoin de paramètres pour fonctionner.

EX : la fonction `chauffage`. On va avoir 1 paramètre : la `température`. En réglant le bouton de température on règle en fait un paramètre, le paramètre de la fonction `chauffage`. Ce paramètre va déterminer le fonctionnement interne du chauffage. Le `chauffage`va retourner une seule chose de la chaleur.

- On ne sait pas comment est construit techniquement le chauffage, et on s'en moque.
- On a à notre disposition une interface simple pour faire une tâche complexe.


## Définition d'une fonction

```php
<?
function nom_de_la_fonction1 ($param1){
  return $param1;
}

function nom_de_la_fonction2 ($param1,$param2){
  return $param1 + $param2;
}

function nom_de_la_fonction3 (){
  return NULL;
}
```
- La définition revient à créer la machine

## Execution d'une fonction

Executer une fonction c'est lancer la machine. C'est allumer le chauffage et régler une température.


```php
nom_de_la_fonction1(1);
nom_de_la_fonction2(1,2);
nom_de_la_fonction2();


$variable1 = 1;
nom_de_la_fonction2($variable1,2);

```
