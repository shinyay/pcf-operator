#!/bin/bash

echo "[Availability Zones]"
cat terraform.out | jq -r .azs.value
