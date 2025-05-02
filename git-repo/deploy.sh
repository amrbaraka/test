#!/bin/sh
# Load variables from ConfigMap mounted file
set -a 
. /configs/vars.env
set +a 
echo $REPLICAS
echo $IMAGE
#Substitute the variables in app.template.yaml and output to app.yaml
envsubst < /test/git-repo/app.template.yaml > /tmp/app.yaml
# Apply the modified YAML
kubectl apply -f /tmp/app.yaml
