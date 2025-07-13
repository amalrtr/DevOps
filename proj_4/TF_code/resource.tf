data "aws_key_pair" "cicd-project-key" {
  key_name = "cicd_project"
}

resource "aws_instance" "cicd-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = data.aws_key_pair.cicd-project-key.key_name

  tags = {
    Name    = var.instance_name
    project = "3"
    ref     = "Abvm-youtube"
  }
}
