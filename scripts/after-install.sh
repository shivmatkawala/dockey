#!/bin/bash
set -e

DEPLOY_SRC="/tmp/deployment"
DEPLOY_DEST="/var/www/html"

echo "Clearing old contents from $DEPLOY_DEST..."
rm -rf "$DEPLOY_DEST"/*

echo "Copying new build to $DEPLOY_DEST..."
cp -r "$DEPLOY_SRC"/* "$DEPLOY_DEST/"

echo "Restarting Nginx..."
systemctl restart nginx

echo "Deployment complete."
