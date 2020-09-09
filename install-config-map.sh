#!/bin/bash
kubectl create configmap redis-config-map --from-file=conf/ -n  redis-server
