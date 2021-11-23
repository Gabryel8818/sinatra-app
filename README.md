
# Como Utilizar
1. Primeiro é preciso criar a infraestrutura na aws é um simples ec2 e um SG liberando a porta da aplicação :)

```
cd terraform
terraform apply
```
> Lembre-se de adicionar sua chave pública no ./terraform/ec2.tf

2. Logo você precisa provisionar o ambiente, e buildar a imagem, para isto iremos utilizar o nosso grande amigo Ansible que irá atuar em conjunto com o docker-compose, ele que será o responsável por garantir a configuração do ambiente com sua idempotência

```
cd ansible
ansible-playbook playbook.yml -i hosts
```
agora basta acessar o IP que o endpoint do terraform liberou em seu terminal acrescentando a porta 3000
exemplo: 10.0.0.1:3000

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


# Referências de instalação
> https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

> https://docs.docker.com/compose/reference/run/

> https://www.terraform.io/downloads.html
