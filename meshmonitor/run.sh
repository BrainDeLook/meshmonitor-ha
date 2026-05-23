#!/bin/bash
CONFIG_PATH=/data/options.json

export MESHTASTIC_NODE_IP=$(jq --raw-output '.MESHTASTIC_NODE_IP' $CONFIG_PATH)
export MESHTASTIC_TCP_PORT=$(jq --raw-output '.MESHTASTIC_TCP_PORT' $CONFIG_PATH)
export SESSION_SECRET=$(jq --raw-output '.SESSION_SECRET' $CONFIG_PATH)
export DISABLE_ANONYMOUS=$(jq --raw-output '.DISABLE_ANONYMOUS' $CONFIG_PATH)

export DATABASE_PATH="/data/meshmonitor.db"
export PORT=3001
export TRUST_PROXY=true
export ALLOWED_ORIGINS="*"
export COOKIE_SECURE=false

# Получаем Ingress URL чтобы приложение знало свой путь
if [ -n "$SUPERVISOR_TOKEN" ]; then
  RAW_URL=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/addons/self/info | jq --raw-output '.data.ingress_url')
  export BASE_URL="${RAW_URL%/}"
  echo "Configuring MeshMonitor BASE_URL to: $BASE_URL"
fi

# Запускаем nginx в фоне
mkdir -p /run/nginx
nginx

echo "Starting MeshMonitor..."
exec node /app/dist/server/server.js
