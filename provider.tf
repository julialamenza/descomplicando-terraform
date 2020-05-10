provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "julia-tf-bucket"
    key    = "terraform-julia.tfstate"
    region = "us-east-1"
  }
} 