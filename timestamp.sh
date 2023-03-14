#!/bin/bash

# update timestamp:
# - records date of the last successful build
# - keeps the workflow enabled
echo "$(date) | $(date +%s)" > timestamp
