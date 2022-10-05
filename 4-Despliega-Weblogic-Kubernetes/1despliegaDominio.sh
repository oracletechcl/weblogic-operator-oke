#!/bin/bash

# solo si esta helm version 3.8 o superior
# helm install domain01 domain --repo oci://$WLREPO/$WLREPODOM/helm/domain --version 1 --set image.repository=$WLREPOIMG,weblogic.managedServersCount=2,image.repo=$WLREPO,image.pullUsername=$WLREPODOM/$WLUSU,image.pullPassword=$WLTOKENCLA 

helm install domain01 weblogic-operator-oke/3-Crea-Imagen-Dominio-Weblogic/ejemplohelm --set image.repository=$WLREPOIMG,weblogic.managedServersCount=2,image.repo=$WLREPO,image.pullUsername=$WLREPODOM/$WLUSU,image.pullPassword=$WLTOKENCLA
