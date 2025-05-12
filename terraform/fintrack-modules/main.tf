#main.tf

module "fintrack" {
  source              = "./modules/fintrack"
  region              = var.region
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  key_name            = var.key_name
  public_key_path     = var.public_key_path
  user_data_script    = var.user_data_script
  app_port            = var.app_port
  ssh_port            = var.ssh_port
  instance_name_tag   = var.instance_name_tag
  s3_bucket_name      = var.s3_bucket_name
}


