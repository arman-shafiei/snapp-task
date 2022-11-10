#!/bin/bash

PWD=/opt/snapp_project

export OLD_RELEASE=`cat ${PWD}/releases/old`

sed -i "s/snapp-project:.*/snapp-project:${OLD_RELEASE}/g" ${PWD}/manifests/deployment.yaml

kubectl apply -f ${PWD}/manifests/deployment.yaml

export OLD_RELEASE=`cat ${PWD}/releases/old` && \
cat ${PWD}/releases/current > ${PWD}/releases/old && \
echo $OLD_RELEASE > ${PWD}/releases/current
