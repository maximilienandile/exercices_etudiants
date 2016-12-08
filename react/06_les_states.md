# Que sont les states ?


## Définition

Il s'agit d'un objet javascript qui est utilisé dans React pour enregistrer les événements.

Chaque composant dispose d'un `state`

Lorsque le `state` change d'un composant tout est `render` une nouvelle fois (y compris les enfants)


## Comment initialiser le `state`d'un composant ?

Il est initialisé au sein de la méthode `constructor`. Cette méthode est executée à chaque fois que le composant est affiché.


```js
constructor(props){
  super(props);

  this.state = { term : ''}
}
```

1. `Super(props)` permet d'appeler les méthodes de la classe parente
2. On initialise le state ensuite de la manière suivante : `this.state = { term : ''}` On crée un nouvel objet en l'assigant à la variable `this.state` On va dans cet objet créer autant de propriétés que l'on veut

## Comment modifier la valeur du `state`

```js
this.setState({term:'yo'})

```

## Comment afficher la valeur du state

```js
render(){
  return (
    <div>

      <input onChange={(event) => this.setState({term:event.target.value})}/>
      Value of the Input {this.state.term}
    </div>)
}
```
