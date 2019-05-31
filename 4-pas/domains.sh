#!/bin/bash

echo "[System Domain]"
cat terraform.out | jq -r .sys_domain.value

echo "[Apps Domain]"
cat terraform.out | jq -r .apps_domain.value
