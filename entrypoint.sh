#!/bin/sh -l

set -xe

echo "az version"
az version 

az login --service-principal --username $app_id --password $password --tenant $tenant

echo "Writing kubeconfig"
az aks get-credentials --name aks-web-$tier-$region --resource-group aks-$region >>/dev/null 2>/dev/null

echo "Issuing kubectl command"
kubectl "$@"