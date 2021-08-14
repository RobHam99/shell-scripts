#!/bin/bash
search_dir=$1
bucket_name=$2
for entry in "$search_dir"/*
do
  echo "https://$bucket_name.s3.amazonaws.com/$entry"
done
