#!/bin/bash

# kubectl create namespace mqtt-mosquitto

# kubectl delete -f mqtt-mosquitto.deployment.yaml
# kubectl delete -f mqtt-mosquitto.replicationcontroller.yaml
# kubectl delete -f mqtt-mosquitto.ingress.yaml
# kubectl delete -f mqtt-mosquitto.volumeclaim.yaml
# kubectl delete -f mqtt-mosquitto.volume.yaml
# kubectl delete -f mqtt-mosquitto.storageclass.yaml

# kubectl delete -n mqtt-mosquitto deployment mosquitto 
# kubectl delete -n mqtt-mosquitto replicationcontroller mosquitto-v0 
# kubectl delete -n mqtt-mosquitto ingress mosquitto-ingress

# kubectl apply -n mqtt-mosquitto -f mqtt-mosquitto.deployment.yaml
# kubectl apply -n mqtt-mosquitto -f mqtt-mosquitto.replicationcontroller.yaml
# kubectl apply -n mqtt-mosquitto -f mqtt-mosquitto.ingress.yaml
# kubectl apply -n mqtt-mosquitto -f mqtt-mosquitto.storageclass.yaml
# kubectl apply -n mqtt-mosquitto -f mqtt-mosquitto.volume.yaml
# kubectl apply -n mqtt-mosquitto -f mqtt-mosquitto.volumeclaim.yaml

# kubectl get secret azure-storage-secret --export -o yaml | kubectl apply --namespace=mqtt-mosquitto -f -

## Create SSL certificate secret ##
# cd /root/gitlab/infrastructure/ssl

# kubectl create secret tls aks-ingress-tls \
# --key server.key \
# --cert server.pem \
# --namespace mqtt-mosquitto
