#!/bin/bash

echo "[Ops Manager Info]"
gcloud compute instances list|grep ops-manager

echo "[SSH to Ops Manager(mypcf-ops-manager --zone asia-northeast1-a)]"
gcloud compute ssh ubuntu@mypcf-ops-manager --zone asia-northeast1-a --force-key-file-overwrite --strict-host-key-checking=no
