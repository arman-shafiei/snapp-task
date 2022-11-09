#!/bin/bash

PWD=/opt/snapp_project

cat ${PWD}/manifests/deployment.yaml | grep -o 'snapp-project:.*' | sed 's/.*://' > ${PWD}/releases/old

sed -i "s/snapp-project:.*/snapp-project:$1/g" ${PWD}/manifests/deployment.yaml

kubectl apply -f ${PWD}/manifests/deployment.yaml

echo $1 > ${PWD}/releases/current
