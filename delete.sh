#!/bin/bash

kubectl -n dev delete -f ./k8s/postgres-stateful.yaml
kubectl -n dev delete -f ./k8s/railwebapp-deployment.yaml
kubectl -n dev delete -f ./k8s/railwebapp-service.yaml
kubectl -n dev delete -f ./k8s/ingress.yaml
kubectl delete ns dev

