#!/bin/bash

docker stop loader-1
docker stop loader-2


kubectl delete -f memquota-requestcount-from-svc-b.yaml
kubectl delete -f rule-requestcount-from-svc-b.yaml

kubectl delete -f memquota-requestcount-from-svc-f.yaml
kubectl delete -f rule-requestcount-from-svc-f.yaml

kubectl delete -f memquota-requestcount-to-svc-d.yaml
kubectl delete -f rule-requestcount-to-svc-d.yaml

kubectl delete -f quota-requestcount-no-source.yaml
kubectl delete -f quota-requestcount-svc-b.yaml
kubectl delete -f quota-requestcount-svc-f.yaml

kubectl delete -f quota-requestcount.yaml
kubectl delete -f memquota-requestcount-from-each-to-svc-d.yaml
kubectl delete -f rule-requestcount-from-each-to-svc-d.yaml

kubectl delete -f limit-from-svc-b-total.yaml
