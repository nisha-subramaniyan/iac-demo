output "created_file_path" {
  description = "Absolute path of the created file"
  value       = local_file.lab_file.filename
}

output "created_file_content" {
  description = "Text written to the file"
  value       = local_file.lab_file.content
}
