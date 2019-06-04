#!/bin/bash

echo "[Ops Manager Info]"
gcloud compute instances list|grep jumpbox

echo "[SSH to Ops Manager(jumpbox --zone asia-northeast1-b)]"
gcloud compute ssh ubuntu@jumpbox --zone asia-northeast1-b --force-key-file-overwrite --strict-host-key-checking=no
