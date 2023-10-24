# pdf-size-infra

Cloudformation stacks for provisioning
- Api Gateway
- S3 Bucket
- Lambda

Make sure aws account configured in your local machine before running following commands

 ```bash
# deploy stacks
./deploy-stacks.yml

# delete stacks
./delete-stacks.yml
``````

TODO
- Stacks for provisioning VPC and security groups
- Stacks for provisioning Code Pipeline 
- Lambda versioning if needed
- CICD for IaC