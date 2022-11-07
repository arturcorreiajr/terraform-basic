provider "aws" {
  alias = "virginia"
  region  = "us-east-1"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}

provider "aws" {
  alias = "ohio"
  region  = "us-east-2"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "mi-backend-terraform-5"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}

// git add . && git commit -m "first commit" && git push