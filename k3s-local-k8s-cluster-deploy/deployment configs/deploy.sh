#!/bin/bash
kubectl apply -f namespace.yaml
sleep 10
kubens demo
kubectl apply -f pacman-certificate.yaml 
sleep 30
kubectl apply -f mongo-deployment.yaml
sleep 60
kubectl apply -f pacman-deployment.yaml
sleep 30
kubectl get all