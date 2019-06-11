#!/bin/bash

bosh -e gcp vms
find /var/tempest/workspaces/default/deployments -name cf-*.yml
echo "bosh -e gcp -d <DEPLOYMENT_NAME> stop --hard"
