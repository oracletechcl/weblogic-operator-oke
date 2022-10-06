#!/bin/bash

# solo si esta helm version 3.8 o superior
helm install domain01 oci://$YYREPO/$YYREPODOM/helm/domain --version 0.1.0 --set image.repository=$YYREPOIMG,weblogic.managedServersCount=2,image.repo=$YYREPO,image.pullUsername=$YYREPODOM/$YYUSU,image.pullPassword=$YYTOKENCLA 

