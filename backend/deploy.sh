#!/bin/sh
# Load variables from ConfigMap mounted file
. /configs/vars.env
echo $REPLICAS
echo $IMAGE
#Substitute the variables in app.template.yaml and output to app.yaml
envsubst < /repo/backend/app.template.yaml > /tmp/app.yaml
# Apply the modified YAML
kubectl apply -f /tmp/app.yaml
