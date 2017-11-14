#!/usr/bin/env bash

QUAY_ROBOT_ACCOUNT=exporter
ORG=pfda2dockstore
APP=bai

docker login

function prompt() {
    echo -n "$1: " && read $2 $1 && echo
}

prompt "APP"
prompt "ORG"
prompt "PFDA_TOKEN" -s
prompt "GITHUB_TOKEN" -s

python3 pfda2dockstore \
  --app-name $APP \
  --pfda-token $PFDA_TOKEN \
  --github-org $ORG \
  --github-token $GITHUB_TOKEN \
  --dockerhub-org $ORG
