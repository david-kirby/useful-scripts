#!/bin/bash
# Get the list of AWS IP ranges and sort by service then join them in a comma separated list
curl -s https://ip-ranges.amazonaws.com/ip-ranges.json | jq -r '[.prefixes[] | select(.service=="EC2_INSTANCE_CONNECT") | .ip_prefix] | join(",")'
