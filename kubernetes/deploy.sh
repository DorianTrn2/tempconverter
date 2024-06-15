#!/bin/bash

minikube kubectl -- delete deployment tempconverter-app
minikube kubectl -- delete deployment tempconverter-db
minikube kubectl -- delete service tempconverter-app
minikube kubectl -- delete service tempconverter-db
minikube kubectl -- delete persistentVolume mysql-pv
minikube kubectl -- delete persistentVolumeClaim mysql-data-vol

minikube kubectl -- apply -f pv-db.yml
minikube kubectl -- apply -f pvc-db.yml
minikube kubectl -- apply -f db-deployment.yml
minikube kubectl -- apply -f db-service.yml
minikube kubectl -- apply -f app-deployment.yml
minikube kubectl -- apply -f app-service.yml
