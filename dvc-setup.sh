dvc remote add otus-mladv-dvc-lesson s3://otus-mladv-dvc-lesson/dvcstore
dvc remote modify otus-mladv-dvc-lesson endpointurl https://storage.yandexcloud.net
dvc remote default otus-mladv-dvc-lesson

dvc remote modify --local otus-mladv-dvc-lesson access_key_id "" # подставьте ваш access_key_id
dvc remote modify --local otus-mladv-dvc-lesson secret_access_key "" # подставьте ваш secret_access_key