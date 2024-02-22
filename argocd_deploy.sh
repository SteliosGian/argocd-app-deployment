#!/bin/bash

# Install from argocd
# kubectl create namespace argocd

# kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.4.7/manifests/install.yaml

# kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

# sleep 2m  # Wait for LoadBalancer to be created

##############################

## Install with helm charts
helm install argocd argocd/ --create-namespace -n argocd

sleep 10  # Wait 10 seconds

##############################

# Get URL
export ARGOCD_SERVER=`kubectl get svc argocd-server -n argocd -o json | jq --raw-output '.status.loadBalancer.ingress[0].hostname'`

# Get password
export ARGO_PWD=`kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d`

echo $ARGOCD_SERVER

echo $ARGO_PWD
