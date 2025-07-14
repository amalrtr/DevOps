data "aws_key_pair" "cicd-project-key" {
  key_name = "cicd_project"
}

resource "aws_instance" "cicd-instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = data.aws_key_pair.cicd-project-key.key_name
  vpc_security_group_ids = [module.cicd_project_sg.security_group_id]

  tags = {
    Name    = var.instance_name
    project = "3"
    ref     = "Abvm-youtube"
  }
}


module "cicd_project_sg" {
  source        = "./modules/security_group"
  sg_name       = "allow_ssh_http"
  description   = "Allow SSH and HTTP traffic"
  allowed_ports = [22, 8080]
}