FROM n8nio/n8n:latest

# Directorio donde n8n guardará los datos persistentes
WORKDIR /data

# Desactivar login
ENV N8N_BASIC_AUTH_ACTIVE=false \
    N8N_HOST=0.0.0.0 \
    N8N_PORT=5678 \
    WEBHOOK_URL=https://your-render-url.onrender.com/ \
    NODE_ENV=production

EXPOSE 5678

CMD ["n8n"]
