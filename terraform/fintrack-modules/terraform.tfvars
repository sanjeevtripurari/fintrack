# terraform.tfvars
region              = "us-east-1"
ami_id              = "ami-084568db4383264d4"
instance_type       = "t2.micro"
key_name            = "fintrack-key"
public_key_path     = "../fintrack_key.pub"
user_data_script    = "../scripts/flask-deploy.sh"
app_port            = 5001
ssh_port            = 22
instance_name_tag   = "FinTrackApp"
s3_bucket_name      = "fintrack-bucket"
