#!/bin/bash

docker build -t  $WLREPOIMG oke-weblogic/3-Crea-Imagen-Dominio-Weblogic/
if [ $? -ne 0 ]; then
        exit
fi
docker push $WLREPOIMG
echo "#####################################################################"
