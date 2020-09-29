# Requerimentos
Itens necessários:
- Docker 
- Docker Compose 

# Deploy Para ambiente Windows com WSL 
- Realizar clone do projeto 
 - Abra o terminal (WSL ou GitBash ) e execute esse sed -i 's/\r$//' deploy.sh
Executar arquivo deploy.sh ->> sh deploy.sh ou ./deploy.sh

# Mudar senha de acesso Redis
 - Alterar no arquivo debloy Variavel "Secret_Redis" e inserir sua senha 
 - Alterar no arquivo localizado em haproxy/haproxy.cfg a linha tcp-check send AUTH\ "sua_senha"\r\n


