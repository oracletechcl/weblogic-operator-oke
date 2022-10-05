#!/bin/bash

docker build -t  $WLREPOIMG weblogic-operator-oke/3-Crea-Imagen-Dominio-Weblogic/
if [ $? -ne 0 ]; then
        exit
fi
##########################################
# Opcional: Anter del primer push, crear repositorio en un compartment
# Se debe consegir el ocid del compartment
# oci artifacts container repository create --display-name $WLREPODOM/workshop/weblogic1 --compartment-id ocid
#


docker push $WLREPOIMG
echo "#####################################################################"
