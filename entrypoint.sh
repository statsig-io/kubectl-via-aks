#!/bin/sh -l

set -xe

echo "az version"
az version 

az login --service-principal --username $app_id --password $password --tenant $tenant >>/dev/null 2>/dev/null

echo "Writing kubeconfig"
if [[ $tier = 'latest' ]]; then
  az aks get-credentials --name aks-web-$tier-$region --resource-group aks-$tier-$region 
else
  az aks get-credentials --name aks-web-$tier-$region --resource-group aks-$region
fi

echo "Issuing kubectl command"
kubectl "$@"
