#!/bin/bash -x

echo "Login repositorio imagenes docker"
echo "$YYTOKENCLA" | docker login $YYREPO -u $YYREPODOM/$YYUSU --password-stdin

echo "Login repositorio charts helm"
echo "$YYTOKENCLA" | helm registry login $YYREPO -u $YYREPODOM/$YYUSU --password-stdin
