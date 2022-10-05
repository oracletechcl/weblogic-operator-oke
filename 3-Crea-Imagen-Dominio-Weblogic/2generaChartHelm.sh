#!/bin/bash

##########################################
# Opcional: Anter del primer push, crear repositorio en un compartment
# Se debe consegir el ocid del compartment
# oci artifacts container repository create --display-name "helm/domain" --compartment-id ocid
helm push $(ls $name*.tgz | tail -1)  oci://$WLREPO/$WLREPODOM/helm
