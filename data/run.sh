#!/usr/bin/with-contenv bashio
set -e

RELAY_SERVER=$(bashio::config 'connector_addr')
PROTOCOL=$(bashio::config 'connector_protocol')
HTTP_DEST=$(bashio::config 'http_dest')
HTTPS_DEST=$(bashio::config 'https_dest')
KEYFILE="/ssl/$(bashio::config 'local_key')"

bashio::log.info "Starting 8xFF Agent..."

exec /agent \
    --connector-addr "$RELAY_SERVER" \
    --connector-protocol "$PROTOCOL" \
    --http-dest "$HTTP_DEST" \
    --https-dest "$HTTPS_DEST" \
    --local-key "$KEYFILE" \
    < /dev/null
