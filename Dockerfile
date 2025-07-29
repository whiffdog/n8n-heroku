FROM n8nio/n8n

ENV DB_TYPE=sqlite
ENV DB_SQLITE_DATABASE=/data/database.sqlite

ENV GENERIC_TIMEZONE=America/Phoenix

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourStrongPasswordHere

RUN mkdir -p /data && chown node:node /data

USER node
