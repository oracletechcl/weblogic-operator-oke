#!/bin/bash

helm install domain01 --repo oci://$WLREPO/$WLREPODOM/helm/domain --version 1.0 --set image.repository=$WLREPOIMG,weblogic.managedServersCount=2,image.repo=$WLREPO,image.pullUsername=$WLREPODOM/$WLUSU,image.pullPassword=$WLTOKENCLA 
