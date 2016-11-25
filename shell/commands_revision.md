# Révision des commandes bash // scripts utiles

## `cut`

Cette commande permet de découper un fichier présenté en colonnes.

```bash
cut [OPTION]... [FILE]...

```

Avec les options suivantes : http://ss64.com/bash/cut.html



## ls

Ls permet de `lister` l'ensemble des fichiers d'un répertoire.

```
ls [Options]... [File]...

```

Avec les options suivantes : http://ss64.com/bash/ls.html

Exemple 1 : Lister tous les dossiers dans le dossier de base :

```bash
ls /Users/maximilienandile
```

Exemple 2 : Lister les éléments d'un dossier qui correspondent à une expression régulière

``bash
ls -a /Users/maximilienandile | grep '^[pryoos]'
```


## grep

Grep permet de rechercher des fichiers en fonction d'un certain pattern

```
grep [options] PATTERN [FILE...]
```
Liste des options : http://ss64.com/bash/grep.html

### Afficher tous les contextes d'utilisation d'un mot dans un fichier

```
grep -A 2 -B -2 "The mail system"
```

Afichera les deux prédentes et deux suivantes lignes de la ligne qui a été trouvée.


## curl

Permet de télécharger du contenu et éventuellement le stocker sur la machine

Exemeple 1 :

```bash
curl http://ss64.com/bash/ -o ss64.html

```


## Compter le nombre d'occurences de caractères dans un fichier

```bash
grep -o 'needle' file | wc -l

```

Explication :
- On cheche le mot `needle` grâce à la commande grep
- l'option `-o`permet de n'afficher que les lignes avec un match
- Ensuite à partir de ce résultat on va compter les lignes (commande `wc -l`)


## Sélectionner toute les occurences de caractères

```bash
grep -o 'needle' file

```

## Sélectionner toutes les occurences d'un texte sauf celles qui contiennent une sous-chaine spécifique


On utilise une regex :
```
https?:\/\/(?!linguee)([-\w]*\.)(?!w3|tempuri)\S*
```

Astuce : pour mieux comprendre les regex : utiliser le site : https://regex101.com/

## Diriger la sortie d'un `grep` vers un fichier

```
grep -n "YOUR SEARCH STRING" * > output-file
```


## Intérer sur toutes les lignes d'un fichier : `cat`

```
cat file.txt
```

## Aficher la fréquence d'un token dans un texte

```
 echo 'La vie est bien la vie est belle' | tr ' ' '\n' | sort | uniq -c

```

Amélioration : mettre tout en minuscule sinon La et la sont considérés comme deux mots différents
