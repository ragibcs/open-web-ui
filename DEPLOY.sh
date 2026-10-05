#!/usr/bin/env bash
set -e
APP="open-webui-ragib"
REGION="sin"

fly auth login
fly launch --no-deploy --name "$APP" --region "$REGION"
fly volumes create open_webui_data --size 10 --region "$REGION" -a "$APP"
fly secrets set OPENAI_API_KEY="YOUR_API_KEY" -a "$APP"
fly deploy -a "$APP"
fly status -a "$APP"
fly open -a "$APP"
