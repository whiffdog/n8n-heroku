# Use official n8n image
FROM n8nio/n8n:latest

# Enable basic authentication (optional but recommended)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourStrongPasswordHere

# Optional: Set up SQLite as the DB (no extra service needed)
ENV DB_TYPE=sqlite
ENV DB_SQLITE_DATABASE=/home/node/.n8n/database.sqlite

# Optional: Set custom domain config
ENV N8N_HOST=automation.whiffdog.com
ENV WEBHOOK_URL=https://automation.whiffdog.com
ENV N8N_PROTOCOL=https

# Optional but recommended: encryption key
ENV N8N_ENCRYPTION_KEY=yourVerySecureRandomKey

# Set correct user
USER node

# Start n8n process
CMD ["n8n"]
