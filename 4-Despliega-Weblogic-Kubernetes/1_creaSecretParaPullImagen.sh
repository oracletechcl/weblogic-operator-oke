#!/bin/bash


echo "######################################################################"
kubectl create secret docker-registry ocirsecret --docker-server=$WLREPO --namespace=default \
--docker-username=$WLREPODOM/$WLUSU --docker-password=$WLTOKENCLA --docker-email=$WLUSU
echo "######################################################################"
