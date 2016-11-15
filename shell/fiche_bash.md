
# Bash Scripting : Fiche de révision

## Anatomie d'un Script

```
#!/bin/bash

```

## Variables

### Déclaration

```
#!/bin/bash

message='truc'


```

### Concaténation de deux variables

```
#!/bin/bash

# On déclare la variable  foo
foo='test'
# On déclare le variable message
message='truc'

# On concaténe deux variable avec une chaine vide au milieux
var3=$foo'  '$message

# On affiche le contenu de var 3
echo $var3
```

### Execution d'une commande : les back quotes


```
#!/bin/bash
foo=`pwd`

echo $foo
```

## Input utilisateur

```
#!/bin/bash
read foo
echo "$foo a été tapé"
```

## Opérations algébriques

```
#!/bin/bash

let "a = 1"
let "b = 2"
let "c = a + b"
echo $c
```

## Conditions

### Structures conditionnelles simples

```
#!/bin/bash

var="Test"

if [ $var = "Test" ]
then
        echo "la variable est bien renseignée avec la chaine Test"
else
        echo "bla bla"
fi
```

### Structures conditionnelles en cascade

```
#!/bin/bash
if [ cond1 ]
then
        echo "1 OK"
elif [ cond2 ]
then
        echo "2 ok"
elif [ cond3 ]
then
        echo "3 OK"
else
        echo "1 KO ET 2 KO et 3 KO"
fi

```

### Tests
```
!= # n'est pas égal

-n # n'est pas vide

-z # est vide

-eq # est égal

-ne # n'est pas égal

-lt # <

-le # <=

-gt # >

-ge # >=

```

## Boucles


### While

```
#!/bin/bash

while [ test ]
do
        echo 'boucle'
done
```

### for

```
#!/bin/bash

for variable in '1' '2' '3'
do
        echo $variable
done
```

### for avec séquences


```
#!/bin/bash
for i in `seq 1 10000`;
do
        echo $i
done
```


## Divers

### Imprimer dans un fichier

```
#!/bin/bash


echo 'yoooo' >> file.html
```

### Vider un fichier


```
#!/bin/bash


echo '' > file.html
```

### Itérer sur les lignes d'un fichier

```
for i in `cat file.txt`
do
  echo $i
done
```

### Télécharger une page web dans un dossier spécifique

```
wget -O ./PAGES-ASPIREES/1.html "http://www.google.fr"

wget -O ./dossier/1.html "http://www.google.fr"

wget -O ./dossier/1.html $url

```

### Télécharger le dump d'une page web


```
lynx -dump $url > ./DUMP-TEXT/dump.txt
lynx -dump "http://www.google.fr" > ./DUMP-TEXT/$nom_du_dump.txt

```
