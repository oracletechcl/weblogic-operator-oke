#!/bin/bash

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm search repo ingress-nginx
helm install nginx-operator ingress-nginx/ingress-nginx

