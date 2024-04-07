resource "aws_instance" "my-machine-for-test-of-terraform" {
  ami = "ami-2757f631"
  instance_type = "t2.micro"
}
