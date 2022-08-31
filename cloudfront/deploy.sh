#!/bin/bash -e
region="$1"; shift
name="$1"; shift



stackname=loadgen-ui-$name
export AWS_DEFAULT_REGION="$region"
aws cloudformation deploy \
    --stack-name  $stackname \
    --template-file template.yaml \
    --no-fail-on-empty-changeset \
    --parameter-overrides  Region="$region"\
    "$@"
aws cloudformation update-termination-protection \
    --enable-termination-protection \
    --stack-name $stackname
