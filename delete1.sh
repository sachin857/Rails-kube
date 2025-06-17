#!/bin/bash

kubectl -n argocd delete -f application.yaml
kubectl -n argocd delete -f argocd-cm.yaml
kubectl -n argocd delete -f argocd-rbac-cm.yaml
kubectl -n argocd delete -f argocd-secrets.yaml

