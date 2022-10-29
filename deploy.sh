#!/bin/bash
TEMPLATE=product.template
STACK_NAME=custom-web-stack
S3_BUCKET=cfn-tester


#  aws cloudformation validate-template --template-body file://${TEMPLATE}.yaml

aws cloudformation package \
    --template-file ${TEMPLATE}.yaml \
    --s3-bucket ${S3_BUCKET} \
    --output-template-file ${TEMPLATE}_output.yaml || exit

aws cloudformation deploy \
    --template-file ${TEMPLATE}_output.yaml \
    --stack-name ${STACK_NAME} \
    --capabilities CAPABILITY_NAMED_IAM

npm run deploy