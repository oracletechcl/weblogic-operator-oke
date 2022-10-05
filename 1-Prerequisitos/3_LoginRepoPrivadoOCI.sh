#!/bin/bash -x

echo "Login repositorio imagenes docker"
docker login $WLREPO -u $WLREPODOM/$WLUSU -p "$WLTOKENCLA"

echo "Login repositorio charts helm"
echo "$WLTOKENCLA" | helm registry login $WLREPO -u $WLREPODOM/$WLUSU --password-stdin
