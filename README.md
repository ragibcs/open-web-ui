# Open WebUI on Fly.io

Uses the official Open WebUI container image.

## Deploy

    fly auth login
    fly launch --no-deploy --name open-webui-ragib --region sin

Create persistent storage:

    fly volumes create open_webui_data --size 10 --region sin -a open-webui-ragib

Set your API key:

    fly secrets set OPENAI_API_KEY="YOUR_API_KEY" -a open-webui-ragib

Deploy:

    fly deploy -a open-webui-ragib

Check:

    fly status -a open-webui-ragib
    fly logs -a open-webui-ragib
    fly open -a open-webui-ragib

The WebUI data is persisted at /app/backend/data on the Fly volume.

The example API base is:
https://api.ragib.tech/v1

For production, do not commit API keys to GitHub. Use Fly secrets.
