# Créer un `class component`

## Utilisation des classes en ES6


```js
import React, {Component} from 'react'

class SearchBar extends Component {


  // this is a method
  // The render method is mandatory
  render(){
    return <input />
  }

}

export default SearchBar;

```
1. En premier noous importons `React` du module npm `React`
2. Vous remarquez la notation : `React, {Component}` elle permet dans la suite du fichier d'écrire juste `Component` à la place de `React.Compoment`
3. On crée ensuite une classe que l'on nomme avec le nom de notre composant `SearchBar`. Cette dernière classe va bénéficier de l'ensemble des méthodes de `React.Component` (d'où la notation `extends Component`)
4. On définit ensuite une méthode `render` qui est obligatoire

Notez bien : voici comment on définit une méthode dans une classe ES6
```js

nom_de_la_methode(param1, param2){
  return <div></div>;

}

```
