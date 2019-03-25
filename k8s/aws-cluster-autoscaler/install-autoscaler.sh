#!/bin/bash
helm install --name aws-cluster-autoscaler stable/aws-cluster-autoscaler -f values.yaml

# Ref: https://github.com/helm/charts/tree/master/stable/aws-cluster-autoscaler