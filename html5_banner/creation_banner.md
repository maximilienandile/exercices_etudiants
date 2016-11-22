# Création de Bannières HTML5

## Les principaux formats

### 31px "micro"
micro bar (88 x 31)

### 60px "button"
button 2 (120 x 60)
half banner (234 x 60)
full banner (468 x 60)

### 90px "banner"
button 1 (120 x 90)
leaderboard (728 x 90)

### 125px "small rectangle"
square button (125 x 125)

### 250px "medium rectangle"
vertical banner (120 x 240* Close enough!)
square pop-up (250 x 250)
medium rectangle (300 x 250)

### 400px "large rectangle"
vertical rectangle (240 x 400)

### 600px "skyscraper" (très utilisé)
skyscraper (120 x 600)
wide skyscraper (240 x 600)
half-page ad (300 x 600)


## Création d'une bannière


1. Créer un dossier `banner`
2. Créer un fichier `ad.html` qui va contenir le code de la bannière.
3. Créer un fichier `integration.html` pour visualiser l'intégration type de la bannière

## Utilisation d'une iFrame

On va utiliser une `iframe` par défaut afin de cherger le html d'une autre page web.

Au sein de la page où la bannière sera intégrée : (`integration.html`)
```
<div id="ad" style="width:100%;height:90px;" >
   <iframe
      src="http://link.to.the.html.page.html"
      border="0"
      scrolling="no"
      allowtransparency="true"
      width="100%"
      height="100%"
      style="border:0;">
   </iframe>
</div>
```

## Utilisation d'une image pour les bannières fixes

```html
<div class="mgb16">
        <a class="opacite_hover" href="https://checkout.lemonde.fr/gcheckout/cart/add/sku/S_PRE30J100PRLVT1FPRIO/#xtor=CS1-263[BOUTONS_LMFR]-[COL_DROITE]-5-[Home]" onclick="return xt_click(this, 'C', '', 'Abo::Col_droite', 'N')">
<img id="bt_recrut_abo" src="//s1.lemde.fr/medias/web/1.2.698/img/marketing/bloc_fixe_une.jpg" alt="Découvrez l'édition abonnés" data-lazyload="false" class="lazy-retina" data-no-hd-src="//s1.lemde.fr/medias/web/1.2.698/img/marketing/bloc_fixe_une.jpg" data-hd-src="//s1.lemde.fr/medias/web/1.2.698/img/marketing/bloc_fixe_une.jpg">        </a>
    </div>

```

## Utilisation de Google Designer

Téléchargement pour mac : https://dl.google.com/webdesigner/mac/shell/googlewebdesigner_mac.dmg


### Faire matcher la pub avec la fenètre d'affichage

Afin d'avoir une bannière responsive il faut cocher la case `mise en page responsive`.

### Ajouter des effets visuels en fonction d'une timeline

![Timeline](timeline.tiff)

Il faut ajouter simplement les vues les unes après les autres et penser à régler les transitions
