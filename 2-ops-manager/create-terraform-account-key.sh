#!/bin/bash

gcloud iam service-accounts keys list --iam-account "terraform-service-account@${PCF_PROJECT_ID}.iam.gserviceaccount.com"
gcloud iam service-accounts keys create 'gcp_credentials.json' --iam-account "terraform-service-account@${PCF_PROJECT_ID}.iam.gserviceaccount.com"
