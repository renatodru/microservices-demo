#!/bin/bash

# minikube kubectl -- apply -f ./kubernetes-manifests/adservice.yaml
# minikube kubectl -- apply -f ./kubernetes-manifests/cartservice.yaml
# minikube kubectl -- apply -f ./kubernetes-manifests/checkoutservice.yaml
# minikube kubectl -- apply -f ./kubernetes-manifests/currencyservice.yaml
# minikube kubectl -- apply -f ./kubernetes-manifests/emailservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/frontend.yaml
# minikube kubectl -- patch statefulset frontend-external -p '{"spec": {"template": {"spec":{"containers":[{"name":"server","imagePullPolicy":"IfNotPresent"}]}}}}'
# minikube kubectl patch pod frontend -p '{"spec": {"template": {"spec":{"containers":[{"name":"server","imagePullPolicy":"IfNotPresent"}]}}}}' #não funcionou
kubectl patch pod frontend-544b84bcd8-zt8bb -p '{"spec":{"containers":[{"name":"server","imagePullPolicy":"IfNotPresent"}]}}'#funcionoy, mas deu erro

# Update a container's image using a JSON patch with positional arrays
# kubectl patch pod valid-pod --type='json' -p='[{"op": "replace", "path": "/spec/containers/0/image", "value":"newimage"}]'
  
# Update a deployment's replicas through the scale subresource using a merge patch.
# kubectl patch deployment nginx-deployment --subresource='scale' --type='merge' -p '{"spec":{"replicas":2}}'

# minikube kubectl -- apply -f ./kubernetes-manifests/paymentservice.yaml
# minikube kubectl -- apply -f ./kubernetes-manifests/productcatalogservice.yaml
# minikube kubectl -- apply -f ./kubernetes-manifests/recommendationservice.yaml
# minikube kubectl -- apply -f ./kubernetes-manifests/shippingservice.yaml
# minikube kubectl -- apply -f ./kubernetes-manifests/loadgenerator.yamldelet