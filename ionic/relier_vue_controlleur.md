# Contrôleur et vue : comment lier les deux


## 1° étape dans la vue

Dans la vue (dans le dossier `templates`) on va pouvoir relier un élément de la vue au contrôleur.

Par exemple si on veut déclencher une action (ex: sauvegarde d'une donnée) au clic sur un buton

```html
<!-- Dans la vue -->
<button ion-button color="secondary" ng-click="execute_save()">Secondary</button>
```

Lorsqu'on clique sur le boute la fonction `execute_save` dans le contrôleur est lancée.

## 2° étape dans le contrôleur

On va définir la fonction `execute_save`
```javascript

$scope.execute_save=function(){
  // Faire les actions de la fonction
}

```
