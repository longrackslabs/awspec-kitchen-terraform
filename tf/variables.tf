variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "instance_type" {
  default = "t2.micro"
}
variable "ami" {
  default = "ami-ed100689"
}
variable "name" {}
