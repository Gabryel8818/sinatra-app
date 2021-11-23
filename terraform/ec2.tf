resource "aws_instance" "pagarme_app" {
     ami                          = data.aws_ami.ubuntu.id
     instance_type                = var.instance_type
     associate_public_ip_address  = true
     vpc_security_group_ids       = [aws_security_group.main.id]
     key_name                     = "ssh-key"
  }


resource "aws_key_pair" "ssh-key" {
  key_name            = "ssh-key"
  public_key          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDuyX/TLjIsDrCZyRdBAb/pPbFn7k4lPPLdsQWkhGBrbL4BcIXSw5n3ueBscf7wTCWvTGbnIau2CQLuHG1vQ2bhRC+foWfOqkADbQAbswm3TNmwYpy+7o9X2I2uJ+psFCmtbePTQYsJURVDLxt9r7iXTVoTm+hZgUWjgVZxBq9dMRgirCUoObjp+kq4pErl35ubBjA7U73AgSMStqBsMXzzm3Jqgc1xjja9P6HRxU7l76lPDDGb6BWa9vxWlNGCn0PTkpw8ScE/JrgSyiL2hn4KAuSar6wcv16JrM6piTccBGgYik9iddmPDKhUNZNfa/TJ9RjxlFUgGzEAemq9dHdGNFlW5WMaBMkQyhIz9R1lhoq/1VOr8gcBEkjYwj0/T8nWrO7EITrSbosSNHGvkrIYC5s6gpR2NomHNfYoqtQHJcspLF7HcLNZwgj11il37VHt/bRFScgoSI85WWU5Sf8VMr7PbrSlDlZdKYMVF3kPrs4eDe91c4NQvTjkyMRRx8U= gabriel@brewmaster"

}
