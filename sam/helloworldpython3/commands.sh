# Create an S3 bucket for SAM deployments
aws s3 mb s3://ywc-sam-deploy-bucket

# Package the SAM template to Cloudformation template
aws cloudformation package --template-file template.yaml --s3-bucket ywc-sam-deploy-bucket --output-template-file gen/template-generated.yaml

# Deploy the SAM application
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name ywc-sam-stack --capabilities CAPABILITY_IAM