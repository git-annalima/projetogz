Para alterar a imagem do contêiner para usar o MySQL com o Zabbix, você precisará ajustar o serviço zabbix-web e adicionar um novo serviço para o MySQL. Aqui está uma versão atualizada do seu arquivo docker-compose.yml:

yaml
Copy code
version: '3.9'

services:
  zabbix-web:
    image: zabbix/zabbix-web-apache-mysql:latest
    container_name: zabbix-web
    ports:
      - "8080:8080"
    environment:
      - DB_SERVER_HOST=database
    depends_on:
      - database

  database:
    image: mysql:5.7
    container_name: zabbix-db
    volumes:
      - zabbix-db-data:/var/lib/mysql
    environment:
      - MYSQL_ROOT_PASSWORD=your_root_password
      - MYSQL_DATABASE=zabbix
      - MYSQL_USER=zabbix
      - MYSQL_PASSWORD=your_zabbix_password

volumes:
  zabbix-db-data:
Neste arquivo:

O serviço zabbix-web usa a imagem oficial do Zabbix com suporte ao MySQL. Especificamos a variável de ambiente DB_SERVER_HOST=database para indicar que o servidor de banco de dados está hospedado no serviço chamado database.
Adicionamos um novo serviço chamado database, usando a imagem oficial do MySQL 5.7. Definimos variáveis de ambiente para configurar a senha do root do MySQL, o nome do banco de dados, o usuário e a senha do Zabbix.
Criamos um volume chamado zabbix-db-data para persistir os dados do MySQL.
Depois de ajustar o arquivo docker-compose.yml, você pode executar o Zabbix e o MySQL usando o seguinte comando na pasta onde o arquivo docker-compose.yml está localizado:

bash
Copy code
docker-compose up -d
Isso iniciará os serviços em segundo plano. Certifique-se de substituir your_root_password e your_zabbix_password pelas senhas desejadas para o root do MySQL e para o usuário do Zabbix, respectivamente.
