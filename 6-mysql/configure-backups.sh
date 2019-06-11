#!/bin/bash

cat << EOS
Backup configuration: GCS
Project ID: $(gcloud config get-value core/project)
Bucket name: pivotal-mysql-backups
Service Account JSON: $(cat ../2-ops-manager/gcp_credentials.json)
EOS
