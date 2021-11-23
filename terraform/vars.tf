variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ssh-key" {
  default = "ssh-rsa AAAAB3NzaC1yc.............." # Adicione sua chave
}

