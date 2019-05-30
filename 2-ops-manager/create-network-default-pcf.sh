#!/bin/bash

gcloud compute networks peerings create default-to-${PCF_SUBDOMAIN_NAME}-pcf-network \
  --network=default \
  --peer-network=${PCF_SUBDOMAIN_NAME}-pcf-network \
  --auto-create-routes

gcloud compute networks peerings create ${PCF_SUBDOMAIN_NAME}-pcf-network-to-default \
  --network=${PCF_SUBDOMAIN_NAME}-pcf-network \
  --peer-network=default \
  --auto-create-routes

gcloud compute networks peerings list
