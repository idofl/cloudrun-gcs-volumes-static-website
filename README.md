# Host a static website using Cloud Run and Cloud Storage volumes

## Description:
This repo demonstrates how we can use an ```nginx``` container running on Cloud Run to host a static website where all static files are securely stored in a private bucket on Google Cloud Storage. For more details please check the blog [here](https://varundmishra.medium.com/host-a-secure-static-website-using-cloud-run-and-cloud-storage-8954768403ab). The code was updated to use [Cloud Run volume mounts](https://cloud.google.com/blog/products/serverless/introducing-cloud-run-volume-mounts) instead of GCSFuse.

## Assumptions:
* You have working knowledge/understanding of Google Cloud Services
* Basic hands-on knowledge of using Google Cloud Console/```gcloud``` cli
* A Google Cloud account with correct privileges
* Sample code and artifacts for static website

## Usage:
* Please refer to the `commands_playbook.sh` file for commands used to run this demo.

