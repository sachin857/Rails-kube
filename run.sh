#!/bin/bash

[ kubectl get ns dev ] &> /dev/null || kubectl create ns dev
kubectl -n dev apply -f ./k8s/ingress.yaml
kubectl -n dev apply -f ./k8s/postgres-stateful.yaml
kubectl -n dev apply -f ./k8s/railwebapp-deployment.yaml
kubectl -n dev apply -f ./k8s/railwebapp-service.yaml
