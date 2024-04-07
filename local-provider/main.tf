resource "local_file" "my_very_nice_file" {
  filename = var.my_nice_filename
  content = var.my_nice_file_content
}

data "local_file" "my_another_file" {
  filename = "another_file.txt"
}
