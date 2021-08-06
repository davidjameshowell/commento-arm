#!/usr/bin/env ash

wget https://github.com/cloudflare/cloudflared/releases/download/2021.8.0/cloudflared-linux-arm -O /tmp/cloudflared
chmod +x /tmp/cloudflared
/commento/commento &
/tmp/cloudflared tunnel --config=/root/.cloudflared/${CLOUDFLARED_CONFIG} --no-autoupdate run ${CLOUDFLARED_TUNNEL} 
