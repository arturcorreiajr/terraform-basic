provider "aws" {
  alias = "virginia"
  region  = "us-east-1"
}

provider "aws" {
  alias = "ohio"
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "mi-backend-terraform-5"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}

