resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

module "key_pair" {
  source  = "terraform-aws-modules/key-pair/aws"
  version = "2.0.0"

  key_name   = "${random_pet.pet_1.id}-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "random_pet" "pet_1" {
  length    = var.key_length
  separator = "."
}
 module "test_module" {
  source = "./modules/test_mod"
  test_var = var.test_var
 }
