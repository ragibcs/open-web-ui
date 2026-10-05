FROM ghcr.io/open-webui/open-webui:main
ENV PORT=8080
EXPOSE 8080
CMD ["bash", "start.sh"]
