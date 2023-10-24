#!/bin/bash

set -e

echo "Emptying S3 bucket..."
aws s3 rm s3://$(aws s3api list-buckets --query "Buckets[?starts_with(Name, 'pdf-size-api-lambda-stack-pdfs3bucket')].Name" --output text) --recursive

echo "Deleting stacks..."

aws cloudformation delete-stack --stack-name pdf-size-api-lambda-stack

rm stack-creation-output.json