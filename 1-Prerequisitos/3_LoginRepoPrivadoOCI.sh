#!/bin/bash -x

echo "Login repositorio imagenes docker"
echo "$WLTOKENCLA" | docker login $WLREPO -u $WLREPODOM/$WLUSU --password-stdin

echo "Login repositorio charts helm"
echo "$WLTOKENCLA" | helm registry login $WLREPO -u $WLREPODOM/$WLUSU --password-stdin
