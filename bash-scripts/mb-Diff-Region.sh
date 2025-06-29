#!/bin/bash
# Makes a bucket in the location of my choosing via the command line
echo "== create-bucket"

if [[ -z $1 || -z $2 ]]; then # If there is no first argument
    # Print out the following message and exit with error code 1
    echo "There should be a bucket name, ex ./bucket my-bucket-name"
    exit 1
fi

BUCKET_NAME = $1 # Setting our bucket-name to the first argument in the command line
BUCKET_REGION = $2 # Bucket region ex ca-central-1

echo "aws s3api create-bucket" 

aws s3api create-bucket \
    --bucket $BUCKET_NAME \
    --create-bucket-configuration = "LocationConstraint=$2" \
    --query Location \
    --output text