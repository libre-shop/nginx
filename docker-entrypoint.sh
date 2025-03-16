#!/usr/bin/env bash
set -e

echo "Generated nginx.conf:"
echo ""
cat /etc/nginx/nginx.conf

mkdir -p /cache/shop
mkdir -p /cache/uploads
mkdir -p /cache/api

echo "Starting nginx"
echo "NGINX_DEBUG=${NGINX_DEBUG}"
# Start Nginx
if [ "$NGINX_DEBUG" = "true" ]; then
  sed -i 's/error\.log warn/error.log debug/' /etc/nginx/nginx.conf
  exec nginx-debug -g 'daemon off;'
else
  exec nginx -g 'daemon off;'
fi
