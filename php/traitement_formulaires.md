# Le traitement des formualires en PHP

## Comment récupérer les données du front (les pages du site)

### Récupération des paramètres en GET
Si on a un formulaire de ce type :

```html
<form action="traitement.php" method="get">
 	<input type="text" name="champ1">
 	<input type="submit" value="OK">

</form>
```

Le script de taitement sera:


```php
$valeur_du_champ1 = $_GET["champ1"];
```

Attention écrire cette ligne est dangereux.

Car :
1. La méthode get est peu sécurisée (comme la post)
2. On a pas testé si `$_GET["champ1"]` existe bien.

Il faudrait plutôt écrire :

```php
if(isset($_GET["champ1"])){
	$valeur_du_champ1 = $_GET["champ1"];
}
```

### Récupération des paramètres en POST

C'est la même chose sauf qu'on récupère les paramètres via la super-globale `$_POST["champ1"]`.

## Les dangers du traitement du formulaire

1. Règle absolu : ne jamais faire confiance à l'utilisateur, et aux valeurs qu'il renvoit dans les formulaires

Cela se contourne via :
1. Une vérification systématique de l'existence de la variable
2. Il faut vérifier à chaque fois, pour chaque champ le type attendu.
3. Il ne faut jamais intégrer une variable post, get, cookie ... dans une requête SQL directement. (risque d'injection SQL)
4. Il faut utiliser PDO et les requêtes préparées :
http://php.net/manual/fr/pdo.connections.php
