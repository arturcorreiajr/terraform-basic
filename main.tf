provider "aws" {
  alias = "virginia"
  region  = "us-east-1"
  access_key = aws_secret_key
  secret_key = aws_access_key
}

provider "aws" {
  alias = "ohio"
  region  = "us-east-2"
  access_key = aws_secret_key
  secret_key = aws_access_key
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "mi-backend-terraform-5"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}

