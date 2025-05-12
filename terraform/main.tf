# Provider aws

terraform {
    required_providers {
        aws={
            source="hashicorp/aws"
            version="~>5.0"
        }
    }
      backend "s3" {
    bucket = "fintrack-bucket"
    key    = "fintrack/terraform.tfstate"
    region = "us-east-1"
  }
}

# Region

provider "aws"{
    region = "us-east-1"
}

# update new key from local

resource "aws_key_pair" "fintrack_key" {
    key_name="fintrack-key"
    public_key=file("./fintrack_key.pub")
  
}

resource "aws_security_group" "fintrack_sg" {
  name        = "fintrack-sg"
  description = "Allow SSH and App access"  

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "App"
    from_port   = 5001
    to_port     = 5001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description      = "Allow all outbound"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "fintrack" {
    ami="ami-084568db4383264d4"
    instance_type = "t2.micro"
    key_name = aws_key_pair.fintrack_key.key_name
    vpc_security_group_ids = [ aws_security_group.fintrack_sg.id ]
    user_data = file("${path.module}/scripts/flask-deploy.sh")
  tags ={ Name="FinTrackApp"}
}