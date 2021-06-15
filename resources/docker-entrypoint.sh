#!/usr/bin/env ash

wget https://github.com/cloudflare/cloudflared/releases/download/2021.5.10/cloudflared-linux-arm64 -O /tmp/cloudflared
chmod +x /tmp/cloudflared
/commento/commento &
/tmp/cloudflared tunnel --config=/root/.cloudflared/${CLOUDFLARED_CONFIG} run ${CLOUDFLARED_TUNNEL} 
