#!/usr/bin/bash

set -e

status_code=$(curl -I -m 10 -o /dev/null -s -w %{http_code} 127.0.0.1:18080/sayhello)

if [[ status_code -eq 200 ]]; then
   exit 0
fi

echo "status_code is ${status_code}, unhealthy"
exit 1
