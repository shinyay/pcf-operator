#!/bin/bash

echo "[Ops Manager Info]"
gcloud compute instances list|grep ops-manager

echo "[SSH to Ops Manager]"
gcloud compute ssh ubuntu@pcf-ops-manager --force-key-file-overwrite --strict-host-key-checking=no
