
# Como Utilizar
1. Primeiro é preciso criar a infraestrutura na aws é um simples ec2 e um SG liberando a porta da aplicação :)

```
cd terraform
terraform apply
```
2. Logo você precisa provisionar o ambiente, e buildar a imagem, para isto iremos utilizar o nosso grande amigo Ansible que irá atuar em conjunto com o docker-compose, ele que será o responsável por garantir a configuração do ambiente com sua idempotência

```
cd ansible
ansible-playbook playbook.yml -i hosts
```





# Referências de instalação
> !(ansible)[https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html]
> !(docker compose set ports)[https://docs.docker.com/compose/reference/run/]
> !(terraform)[https://www.terraform.io/downloads.html]
