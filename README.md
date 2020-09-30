# Requerimentos
Itens necessários:
- Docker 
- Docker Compose 

# Deploy Para ambiente Windows com WSL 
- Realizar clone do projeto
- Execute o Arquivo Convert-EOL.ps1 ---> no Powershell .\Convert-EOL.ps1
 - Abra o terminal (WSL ou GitBash ) e execute esse sed -i 's/\r$//' deploy.sh
Executar arquivo deploy.sh ->> sh deploy.sh ou ./deploy.sh

# Deploy Ambiente Unix ou Linux 
- Realizar clone do projeto
Executar arquivo deploy.sh ->> sh deploy.sh ou ./deploy.sh


# Mudar senha de acesso Redis
 - Alterar no arquivo debloy Variavel "Secret_Redis" e inserir sua senha 
 - Alterar no arquivo localizado em haproxy/haproxy.cfg a linha tcp-check send AUTH\ "sua_senha"\r\n

 # Teste de Failover
  - No inicio do projeto o mesmo encontra-se como master o container "redis01",
  então para parar execute docker stop redis01 , faça seus testes de escrita e leitura no redis-cli ou outro similar. 

  - Para retornar o container execute docker start redis01 && ./sync.sh 
 







