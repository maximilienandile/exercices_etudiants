# Basics

## Comment créer une paire contrôleur / template

En utilisant notre générateur (cf initiation.md).

Dans le terminal

```bash
yo m-ionic:pair nom_du_controleur main
```

Par exemple pour créer le template et le contrôleur de `login` On tape dans le terminal :

```bash
cd Documents/DEV/myProject
yo m-ionic:pair login main
```

Par exemple pour créer le template et le contrôleur de `home` On tape dans le terminal :

```bash
cd Documents/DEV/myProject
yo m-ionic:pair home main
```
## Templating ionic


### La vue de base

```html
<ion-view view-title="main debug">
  <!-- do you want padding? -->
  <ion-content class="padding">

    

  </ion-content>
</ion-view>
```


### Les composants ionic

Tous les composants sont listés ici : http://ionicframework.com/docs/components/


### Mise en forme avec les grilles

Une grille c'est un tableau.
On peut mettre autant de lignes que l'on veut.

#### Ligne

Chaque ligne est une div de class `row`

```html
<!-- PREMIERE LGNE -->
<div class="row">

</div>

<!-- DEUXIEME LGNE -->
<div class="row">

</div>

```

### Colonnes

Chaque colonne est une div de class `col-X`. X représentant le **pourcentage de la taille de l'écran en largeur**
Chaque colonne est dans une div de classe `row`.

X peut être un chiffre

```html
<!-- PREMIERE LGNE -->
<div class="row">
  <!-- PREMIERE LGNE - 1° colonne de taille 10% -->
  <div class="col-10">

  </div>

  <!-- PREMIERE LGNE - 2° colonne de taille 20% -->
  <div class="col-20">

  </div>

  <!-- PREMIERE LGNE - 3° colonne de taille 70% -->
  <div class="col-70">

  </div>

</div>

```

Pour centrer une div, on peut utiliser cette astuce : http://stackoverflow.com/questions/31050832/ionic-how-to-center-a-div.
