# Usar a imagem oficial do n8n como base
FROM n8nio/n8n:latest

# Mudar para o usuário root para instalar pacotes
USER root

# Instalar o nó personalizado do n8n-mcp
RUN npm install n8n-nodes-mcp-client

# Voltar para o usuário node padrão
USER node
