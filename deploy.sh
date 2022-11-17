#!/bin/bash

minikube kubectl -- apply -f ./kubernetes-manifests/adservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/cartservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/checkoutservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/currencyservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/emailservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/frontend.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/paymentservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/productcatalogservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/recommendationservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/shippingservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/loadgenerator.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/redis.yaml
