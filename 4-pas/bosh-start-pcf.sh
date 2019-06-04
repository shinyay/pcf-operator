#!/bin/bash

find /var/tempest/workspaces/default/deployments -name cf-*.yml
echo "bosh -e gcp -d <DEPLOYMENT_NAME> start"
