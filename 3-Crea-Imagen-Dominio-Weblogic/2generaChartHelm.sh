#!/bin/bash

##########################################
# Opcional: Anter del primer push, crear repositorio en un compartment
# Se debe consegir el ocid del compartment
# oci artifacts container repository create --display-name "helm/domain" --compartment-id ocid
echo ""
echo "Chart dominio"
helm package weblogic-operator-oke/3-Crea-Imagen-Dominio-Weblogic/ejemplohelm/domain
helm push domain-0.1.0.tgz  oci://$YYREPO/$YYREPODOM/helm
echo ""
echo "Chart Ingress"
helm package weblogic-operator-oke/3-Crea-Imagen-Dominio-Weblogic/ejemplohelm/ingress
helm push ingress-0.1.0.tgz  oci://$YYREPO/$YYREPODOM/helm
