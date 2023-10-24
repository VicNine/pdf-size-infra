#!/bin/bash

set -e

echo "Deleting stacks..."

aws cloudformation delete-stack --stack-name pdf-size-api-lambda-stack

rm stack-creation-output.json