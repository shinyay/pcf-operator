#!/bin/bash

echo "[Project ID]"
cat terraform.out | jq -r .project.value
