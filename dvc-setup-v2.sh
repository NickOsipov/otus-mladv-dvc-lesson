. .env

dvc remote add ${YC_BUCKET_NAME} s3://${YC_BUCKET_NAME}/dvcstore
dvc remote modify ${YC_BUCKET_NAME} endpointurl ${YC_ENDPOINT_URL}
dvc remote default ${YC_BUCKET_NAME}

dvc remote modify --local ${YC_BUCKET_NAME} access_key_id ${YC_ACCESS_KEY}
dvc remote modify --local ${YC_BUCKET_NAME} secret_access_key ${YC_SECRET_KEY}