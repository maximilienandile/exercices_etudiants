# Comment détecter les actions de l'utilisateur


## Détecter les événéments


### Déclaration de l'`Event Handler`

Un `Event Handler` est une fonction.

On peut la définir ainsi :

```js

  onInputChange(event){

    console.log(event.target.value);

  }

```
### Passer l'Event Handler à l'élément

Première version :

```js
import React, {Component} from 'react'


class SearchBar extends Component {


  // this is a method
  // The render method is mandatory
  render(){
    return <input onChange={this.onInputChange}/>
  }

  onInputChange(event){

    console.log(event.target.value);

  }

}


export default SearchBar;

```

Deuxième version

```js
import React, {Component} from 'react'


class SearchBar extends Component {


  // this is a method
  // The render method is mandatory
  render(){
    return <input onChange={(event)=>console.log(event.target.value);}/>
  }

  onInputChange(event){

    console.log(event.target.value);

  }

}


export default SearchBar;

```
