#!/bin/bash

ser -e

# Retrieve the AWS account ID
# account_id=$(aws sts get-caller-identity --query "Account" --output text)

# # Insert the account ID into the template
# sed "s/ACCOUNT_ID/$account_id/" template.yaml > template-with-account-id.yaml

# Validate the Template
aws cloudformation validate-template --template-body file://pdf-size-restapp-stack.yml

# Deploy the stack
aws cloudformation create-stack --stack-name pdf-size-api-lambda-stack --template-body file://pdf-size-restapp-stack.yml --capabilities CAPABILITY_IAM

# The following resource(s) failed to create: [PDFSizeApiLambdaFunction]. Rollback requested by user.
# Properties validation failed for resource PDFSizeApiLambdaFunction with message: #/Role: expected type: String, found: JSONArray
