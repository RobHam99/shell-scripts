#!/bin/bash
directory=$1
bucket_directory=$2
aws s3 cp $directory s3://$bucket_directory --recursive --acl public-read
