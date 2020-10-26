# Requerimentos
Itens necessários:
- Docker 
- Docker Compose 

# Deploy Para ambiente Windows com WSL 
- Realizar clone do projeto
- Execute o Arquivo Convert-EOL.ps1 ---> no Powershell .\Convert-EOL.ps1
- Executar arquivo deploy.sh ->> sh deploy.sh ou ./deploy.sh

# Deploy Ambiente Unix ou Linux 
- Realizar clone do projeto
- Executar arquivo deploy.sh ->> sh deploy.sh ou ./deploy.sh


# Mudar senha de acesso Redis
 - Alterar no arquivo deploy.sh Variavel "Secret_Redis" e inserir sua senha 
 - Alterar no arquivo sync.sh Variavel "Secret_Redis" e inserir sua senha 
 - Alterar no arquivo localizado em haproxy/haproxy.cfg a linha tcp-check send AUTH\ "sua_senha"\r\n

 # Teste de Failover
  - No inicio do projeto o mesmo encontra-se como master o container "redis01",
  então para parar execute docker stop redis01 , faça seus testes de escrita e leitura no redis-cli ou outro similar. 

  - Para retornar o container execute docker start redis01 && ./sync.sh 
 
# Monitoramento e testes
 - Acessar http://"Seu_ip_local":8001, onde irá abrir o RedisInsight.
 - Nele você poderá monitorar e inserir registros sem a necessidade de instalaçao de softawares locais.







