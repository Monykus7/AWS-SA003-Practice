#!/bin/bash
# Creates bucket on us-east-1 server

if [ -z "$1" ]; then # If there is no first argument
    # Print out the following message and exit with error code 1
    echo "There should be a bucket name, ex ./bucket my-bucket-name"
    exit 1
fi

BUCKET_NAME = $1 # Setting our bucket-name to the first argument in the command line

echo "aws s3api create-bucket --bucket $BUCKET_NAME"

aws s3api create-bucket \
    --bucket $BUCKET_NAME