# Expression régulière initiation

## Carctères communs

a single character of: a, b or c
[abc]
a character except: a, b or c
[^abc]
a character in the range: a-z
[a-z]
a character not in the range: a-z
[^a-z]
a character in the range: a-z or a-z
[a-zA-Z]
any single character
.
any whitespace character
\s
any non-whitespace character
\S
any digit
\d
any non-digit
\D
any word character
\w
any non-word character
\W
capture everything enclosed
(...)
match either a or b
(a|b)
zero or one of a
a?
zero or more of a
a*
one or more of a
a+
exactly 3 of a
a{3}
3 or more of a
a{3,}
between 3 and 6 of a
a{3,6}
start of string
^
end of string
$
a word boundary
\b
non-word boundary
\B
A SINGLE CHARACTER OF: A, B OR C
[abc]

## Token general
