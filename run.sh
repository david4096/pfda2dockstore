#!/usr/bin/env bash

PFDA_TOKEN=XXX
QUAY_TOKEN=YYY
GITHUB_TOKEN=ZZZ

QUAY_ROBOT_ACCOUNT=exporter
ORG=pfda2dockstore
APP=bai

python3 pfda2dockstore \
  --app-name $APP \
  --pfda-token $PFDA_TOKEN \
  --github-org $ORG \
  --github-token $GITHUB_TOKEN \
  --quay-org $ORG \
  --quay-account $QUAY_ROBOT_ACCOUNT \
  --quay-token $QUAY_TOKEN
