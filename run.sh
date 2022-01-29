#!/bin/bash

sudo apt install jq -y 

echo "BucketName name is : "
read BucketName
echo "DBName name is : "
read DBName

echo '{"s3BucketName": "'"$BucketName"'", "dbName": "'"$DBName"'"}' | jq > data.json

npm install
npm run cdk bootstrap
npm run cdk deploy