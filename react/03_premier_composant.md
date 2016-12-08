
## Un composant basique

```js
import React from 'react'
import ReactDOM from 'react-dom'

const App = function(){
  return <ol>
    <li> yo</li>
    <li> yo2 </li>
  </ol>;
}

// Take this component generated HTML
// Put it on the page (in the DOM)
ReactDOM.render(<App />, document.querySelector('.container'))
```

1. On commence par aller importer `React` de la bibliothèque `react` (utiliser pour créer et manager nos composants)
2. Puis on importe `ReactDOM` qui est chargé d'interagir avec le `DOM` (d'une mani§re simplifiée c'est l'ensemble des éléments HTML d'une page)

3. Ensuite on crée une constante , qui est en fait une classe pour React.
Attention `App` est une classe, pour créer une instance de la classe on écrit `<App />`
4. Cette classe renvoit du code `JSX` : `<ol>
  <li> yo</li>
  <li> yo2 </li>
</ol>`

5. On appelle ensuite une méthode de `ReactDOM` qui permet de faire un `render` c'est à dire afficher sur la page
6. Cette fonction prends deux paramètres :
- Une instance de la classe
- L'élément HTML, préexistant dans la page, dans lequel on va faire apparaître notre élément

## Notation ES6

```js
const App = () => {
  return <ol>
    <li> yo</li>
    <li> yo2 </li>
  </ol>;
}
```

## Organisation d'une application par composants

- Toujours un composant par fichier
- On crée un dossier `components` dans lequel on place nos composants


## Création d'un composant séparé (functionnal composant)

```js
import React from 'react'

const SearchBar = () => {
  return <input />
}

export default SearchBar;
```

Ensuite on peut récupérer le composant via la commande :

```js
import SearchBar from './components/search_bar.js'
```

Pour faire un reder de ce composant à l'intérieur de notre composant principal :

```js

import React from 'react'
import ReactDOM from 'react-dom'

import SearchBar from './components/search_bar.js'

const App = ()=>{
  return (<div> < SearchBar /> </div>);
}

// Take this component generated HTML
// Put it on the page (in the DOM)
ReactDOM.render(<App />, document.querySelector('.container'))

```
