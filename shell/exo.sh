#!/bin/bash

# On déclare la variable  foo
foo='test'
# On déclare le variable message
message='truc'

# On concaténe deux variable avec une chaine vide au milieux
var3=$foo'  '$message

# On affiche le contenu de var 3
echo $var3
