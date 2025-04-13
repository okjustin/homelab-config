#!/bin/sh

. /run/secrets.env

sed "s|__WEBHOOK_SECRET__|$GITHUB_WEBHOOK_SECRET|g" /hooks.template.json > /generated_hooks.json

exec /usr/local/bin/webhook -hooks /generated_hooks.json -verbose -port 9000
