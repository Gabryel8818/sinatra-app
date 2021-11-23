resource "aws_instance" "pagarme_app" {
     ami                          = data.aws_ami.ubuntu.id
     instance_type                = var.instance_type
     associate_public_ip_address  = true
     vpc_security_group_ids       = [aws_security_group.main.id]
     key_name                     = "ssh-key"
     tags = {
       Name = "ec2-instanec-pagarme"
     }
  }


resource "aws_key_pair" "ssh-key" {
  key_name            = "ssh-key"
  public_key          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABg.........." # Adicione uma chave pública :D
  tags = {
    Name = "ssh-key-pair-pagarme"
  }

}
