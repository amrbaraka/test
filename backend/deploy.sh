#!/bin/sh
# Load variables from ConfigMap mounted file
. /configs/vars.env
#Substitute the variables in app.template.yaml and output to app.yaml
envsubst < /test/backend/app.template.yaml > /tmp/app.yaml
# Apply the modified YAML
kubectl apply -f /tmp/app.yaml
