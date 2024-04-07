output "my_output_file_id" {
  value = resource.local_file.my_very_nice_file.id
}

output "my_output_from_data_source_of_sample_file" {
  value = data.local_file.my_another_file.content
}
