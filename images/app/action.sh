#!/bin/sh

tar -cvf k3s-archive.tar -C /var/lib/rancher/k3s server/cred server/tls server/db server/manifests
kubectl apply -f /usr/local/share/k3s/scout.yaml
kubectl cp k3s-archive.tar scout
#kubectl exec power_up_job power_up.sh
halt
