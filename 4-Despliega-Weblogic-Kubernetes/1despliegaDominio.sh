#!/bin/bash

helm install domain01 ejemplohelm --set image.repository=$WLREPOIMG,weblogic.managedServersCount=2,image.repo=$WLREPO,image.pullUsername=$WLREPODOM/$WLUSU,image.pullPassword=$WLTOKENCLA 
