#!/bin/bash

# solo si esta helm version 3.8 o superior
helm install ingress01 oci://$YYREPO/$YYREPODOM/helm/ingress --version 0.1.0 --set backend.nombre=domain01-cluster-cluster-1,backend.puerto=8001 
