variable "file_name" {
  description = "Name of the file Terraform will create"
  type        = string
  default     = "terraform-created.txt"
}

variable "file_content" {
  description = "Content written into the managed file"
  type        = string
  default     = "Created and managed by Terraform."
}
