#!/bin/bash -e
region="$1"; shift
name="$1"; shift

export AWS_DEFAULT_REGION="$region"
aws cloudformation deploy \
    --stack-name  $name \
    --template-file template.yaml \
    --no-fail-on-empty-changeset \
    --parameter-overrides  ClusterRegion="$region"\
    "$@"
aws cloudformation update-termination-protection \
    --enable-termination-protection \
    --stack-name $name
