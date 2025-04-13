#!/bin/sh
curl -s https://api.github.com/meta | jq -r '.hooks[]' > /opt/docker/traefik/github-ips.txt