#!/usr/bin/env bash

ORG=pfda2dockstore
APP=bai

docker login

prompt() {
    echo -n "$1: " && read $2 $1 && echo
}

echo "Please enter your application name from precisionFDA"
prompt "APP"
echo "Please enter your github org"
prompt "ORG"
echo "Please enter your PFDA token"
prompt "PFDA_TOKEN"
echo "Please enter your github token"
prompt "GITHUB_TOKEN"

python3 pfda2dockstore \
  --app-name $APP \
  --pfda-token $PFDA_TOKEN \
  --github-org $ORG \
  --github-token $GITHUB_TOKEN \
  --dockerhub-org $ORG
