#!/bin/sh
set -a
. /opt/secrets/.env
set +a
exec /app/git-auto-deploy --conf /app/conf.template.yaml