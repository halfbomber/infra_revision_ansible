resource "aws_key_pair" "sshdeploy" {
  key_name   = "my_ssh_key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFcrBXPvUAJ+pZ9RVbbKNSn1J6cfM4WfOMV3nhgY9Jis bagouet.alex@gmail.com"
}
