#!/bin/bash

set -e

echo "Deploying stacks..."

aws cloudformation create-stack --stack-name pdf-size-api-lambda-stack --template-body file://stacks.yml --capabilities CAPABILITY_IAM > stack-creation-output.json

echo "Please go to console to check the status of the stack creation."