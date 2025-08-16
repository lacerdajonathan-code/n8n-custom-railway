# Use a imagem oficial do n8n como base
FROM n8nio/n8n:latest

# Mude para o usuário root para instalar pacotes
USER root

# Instale o nó personalizado do n8n-mcp
RUN npm install n8n-nodes-mcp-client

# Volte para o usuário node padrão
USER node

# ADICIONE ESTA LINHA: Define o comando padrão para iniciar o n8n
CMD ["n8n"]
