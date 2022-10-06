#!/bin/bash

# solo si esta helm version 3.8 o superior
helm install domain01 oci://$YYREPO/$YYREPODOM/helm/ingress --version 0.1.0 --set backend.nombre=domain01-cluster-cluster-1,backend.puerto=8001 

#helm install domain01 weblogic-operator-oke/3-Crea-Imagen-Dominio-Weblogic/ejemplohelm --set image.repository=$YYREPOIMG,weblogic.managedServersCount=2,image.repo=$YYREPO,image.pullUsername=$YYREPODOM/$YYUSU,image.pullPassword=$YYTOKENCLA
