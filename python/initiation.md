# Python Initiation

## Les variables
```python
x=5
a=8
```
### Demande à l'utilisateur

```python
v = input("Donnez moi la valeur de v")
print(v)
```

### Length

`len` est très utile pour déterminer la longueur d'une chaîne

```python
v = "lol"
print(len(v))
```

## Les conditions

```python
if a<7 :
  print("yo")
else :
  print("no")[]
```

## Les boucles

### While

```python
while x>56 :
  print("too")

```
### For

```python
for x in y :
  print(x)

```

### Interruptions de boucles

```python
for x in y :
  if a=="yo" :
    break

```

## Fonctions

### Définition d'une fonction avec paramètres


```python
def nom_de_la_fonction(x,y,z):
  return x+y+z
```

### Execution d'une fonction

```python
def nom_de_la_fonction(x,y,z):
  return x+y+z

# Execution
nom_de_la_fonction(2,4,5)
```

### Imports de fonctions de bibliothèques


```python
import math
```

## Listes

### Création d'une Liste

```python
l=[]
l2=[1,2,3]

```

### Affichage des éléments d'une liste unie par un join

```python

l2=["rr","yoo","tpr"]
"-".join(l2)

```

### Utilisation de `range`

`range(0,10)` permet d'itérer de 0 à 9.
Attention la dernière valeur n'est pas prise en compte !

## Complexité des algorithmes

### Par le calcul

On compte les `affectations de variables` et les `opérations réalisées par l'algorithme`

### Benchmarking

On va calculer le `temps d'éxécution de l'algorithme`
