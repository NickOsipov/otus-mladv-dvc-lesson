import os

from dotenv import load_dotenv
from invoke import task

load_dotenv()

YC_BUCKET_NAME = os.getenv("YC_BUCKET_NAME")

@task
def dvc_setup(ctx):
    ctx.run(f"dvc remote add {YC_BUCKET_NAME} s3://{YC_BUCKET_NAME}/dvcstore")
    ctx.run("dvc remote modify ${YC_BUCKET_NAME} endpointurl ${YC_ENDPOINT_URL}")
    ctx.run("dvc remote default ${YC_BUCKET_NAME}")
    ctx.run("dvc remote modify --local ${YC_BUCKET_NAME} access_key_id ${YC_ACCESS_KEY}")
    ctx.run("dvc remote modify --local ${YC_BUCKET_NAME} secret_access_key ${YC_SECRET_KEY}")

