#!/bin/bash

helm repo add weblogic-operator https://oracle.github.io/weblogic-kubernetes-operator/charts
helm repo update

helm install weblogic-operator weblogic-operator/weblogic-operator \
  --set image=ghcr.io/oracle/weblogic-kubernetes-operator:3.4.1 \
  --set "domainNamespaces={default}" --wait
