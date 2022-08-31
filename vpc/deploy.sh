#!/bin/bash -e
set -x
stack_name="$1"; shift
class_b="$1"; shift
region="$1"; shift

echo "$stack_name"

aws cloudformation deploy \
    --region="$region" \
    --stack-name "$stack_name" \
    --template-file template.yaml \
    --no-fail-on-empty-changeset \
    --parameter-overrides ClassB="$class_b" \
    "$@"

aws  --region="$region" \
    cloudformation update-termination-protection \
    --enable-termination-protection \
    --stack-name "$stack_name"