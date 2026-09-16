terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "lab_file" {
  filename = "${path.module}/${var.file_name}"
  content  = var.file_content
}
