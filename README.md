
# Como Utilizar
1. Primeiro é preciso criar a infraestrutura na aws é um simples ec2 e um SG liberando a porta da aplicação :)

> Lembre-se de adicionar sua chave pública no ./terraform/vars.tf

```
cd terraform
terraform apply
```


2. É preciso instalar as depedências, por se tratar de uma ferramenta em python é preciso ter o python3 e o pip3 instalado, para tal vamos usar os comandos abaixo já entendendo que o python3 esta instalado em sua máquina

```
cd ansible/dependencies
python3 get-pip.py

pip install -r requirements.txt

```
> Lembre-se de alterar a chave privada SSH no arquivo ansible.cfg no campo "private_key_file"

2.1 Logo você precisa provisionar o ambiente, e buildar a imagem, para isto iremos utilizar o nosso grande amigo Ansible que irá atuar em conjunto com o docker-compose, ele que será o responsável por garantir a configuração do ambiente com sua idempotência

```
cd ansible
ansible-playbook -i aws_ec2.yml playbook.yml
```
agora basta acessar o IP que o endpoint do terraform liberou em seu terminal acrescentando a porta 3000 no seu navegador
exemplo: 10.0.0.1:3000
ou o endpoint que o ansible irá gerar este é um exemplo? http://exemplo.us-east-2.compute.amazonaws.com:3000/

3. Para destruir o ambiente basta rodar o comando abaixo:

```
terraform destroy
```

## Caso deseje rodar localmente a aplicação basta rodar os comando abaixo
```
# Entre no diretório
cd ansible/roles/deploy_application/templates

# Agora basta rodar a aplicação (no caso ele irá buildar a imagem e iniciar o container)

docker-compose run --service-ports -d app 
```
Basta acessar no seu navegador a aplicação: 127.0.0.1:3000


# Notas

> Seu usuário do terraform precisa ter permissão no IAM para buscar máquinas ec2 


# Referências de instalação
> https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

> https://docs.docker.com/compose/reference/run/

> https://www.terraform.io/downloads.html
