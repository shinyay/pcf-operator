#!/bin/bash

cat terraform.out | jq -r .env_dns_zone_name_servers.value
