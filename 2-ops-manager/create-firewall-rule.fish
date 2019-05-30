#!/bin/bash

gcloud compute --project=${PCF_PROJECT_ID} firewall-rules create bosh \
 --direction=INGRESS \
 --priority=1000 \
 --network=${PCF_SUBDOMAIN_NAME}-pcf-network \
 --action=ALLOW \
 --rules=tcp:25555,tcp:8443,tcp:22 \
 --source-ranges=0.0.0.0/0

gcloud compute --project=${PCF_PROJECT_ID} firewall-rules list
