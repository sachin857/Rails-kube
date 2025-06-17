#!/bin/bash

[ kubectl get ns argocd ] &> /dev/null || kubectl create ns argocd
kubectl -n argocd apply -f argocd-secrets.yaml
kubectl -n argocd apply -f argocd-cm.yaml
kubectl -n argocd apply -f argocd-rbac-cm.yaml
kubectl -n argocd apply -f application.yaml 
