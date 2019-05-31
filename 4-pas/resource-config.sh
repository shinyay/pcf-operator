#!/bin/bash

echo "[Control]"
echo "tcp:$(cat terraform.out | jq -r .ssh_lb_name.value)"

echo "[Router]"
echo "tcp:$(cat terraform.out | jq -r .ws_router_pool.value),http:$(cat terraform.out | jq -r .web_lb_name.value)"
