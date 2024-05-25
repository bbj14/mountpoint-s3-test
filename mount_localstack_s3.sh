#!/bin/bash

MOUNT_DIRECTORY="/mnt/s3"
BUCKET_NAME="bucket-test"

echo "Start mount s3 bucket..."
mkdir -p $MOUNT_DIRECTORY
mount-s3 \
--allow-delete --allow-overwrite \
--force-path-style --endpoint-url http://localstack:4566 --no-sign-request \
$BUCKET_NAME $MOUNT_DIRECTORY
