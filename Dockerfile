FROM n8nio/n8n

ENV DB_TYPE=sqlite
ENV DB_SQLITE_DATABASE=/home/node/.n8n/database.sqlite
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=YourStrongPasswordHere
ENV N8N_ENCRYPTION_KEY=YourEncryptionKeyHere
ENV N8N_PROTOCOL=https
ENV N8N_HOST=automation.whiffdog.com
ENV N8N_PORT=5678
ENV N8N_EDITOR_BASE_URL=https://automation.whiffdog.com
ENV WEBHOOK_URL=https://automation.whiffdog.com
ENV GENERIC_TIMEZONE=America/Phoenix

USER node

CMD ["n8n"]
