resource "aws_instance" "my_FOTR_server" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.my_public_FOTR_app_sg.id]
  key_name               = var.my_keypair

  tags = {
    Name = "public_server"
  }
}

resource "aws_instance" "private_FOTR_server" {

  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.my_public_FOTR_app_sg.id]
  key_name               = var.my_keypair

  tags = {
    Name = "private_server"
  }
}
