#!/bin/bash

cat terraform.out | jq -r .ops_manager_dns.value

