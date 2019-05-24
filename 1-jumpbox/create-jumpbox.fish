#!/usr/bin/env fish

gcloud compute instances create "jumpbox" \
  --image-family "ubuntu-1804-lts" \
  --image-project "ubuntu-os-cloud" \
  --boot-disk-size "200" \
  --zone us-central1-a
