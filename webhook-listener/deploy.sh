#!/bin/bash
cd /repos/homelab-config
git pull origin main

echo "[+] Redeploying core stacks..."
docker compose -f traefik/docker-compose.yml up -d
docker compose -f webhook-listener/docker-compose.yml up -d
