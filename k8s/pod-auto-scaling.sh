#!/bin/bash

# delete the previous HPA if you want to edit the config
# kubectl delete hpa turing-angular -n turing
kubectl autoscale deployment turing-angular -n turing --min=1 --max=10 --cpu-percent=20

# delete the previous HPA if you want to edit the config
#kubectl delete hpa nginx-ingress-controller -n ingress-nginx
kubectl autoscale deployment nginx-ingress-controller -n ingress-nginx --min=1 --max=10 --cpu-percent=80

# To generate the load and simulate the Autoscaling
#  kubectl run -i --tty load-generator --image=busybox /bin/sh -n turing
#  Hit enter for command prompt and run the following command
#  while true; do wget -q -O- http://turing-angular-service; done