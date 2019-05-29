#!/bin/bash

gcloud projects get-iam-policy ${PCF_PROJECT_ID}
gcloud projects add-iam-policy-binding ${PCF_PROJECT_ID} \
  --member "serviceAccount:terraform-service-account@${PCF_PROJECT_ID}.iam.gserviceaccount.com" \
  --role 'roles/owner'
