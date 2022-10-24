resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

module "key_pair" {
  source  = "terraform-aws-modules/key-pair/aws"
  version = "2.0.0"

  key_name   = "new-tf_key-9e765ffdd3344"
  public_key = tls_private_key.rsa.public_key_openssh
}