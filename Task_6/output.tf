output "bucket_url" {
  value = google_storage_bucket.my-bucket2a.url
}

output "instance_ip" {
  value = google_compute_instance.my-instance2.network_interface[0].access_config[0].nat_ip
}


output "database_connection" {
  value = google_sql_database_instance.my-instance2.private_ip_address
}
