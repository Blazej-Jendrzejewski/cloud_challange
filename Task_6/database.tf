resource "google_sql_database_instance" "my-instance2" {
  name             = var.instance_name2
  database_version = "POSTGRES_13"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "dareit" {
  name     = "dareit"
  instance = google_sql_database_instance.my-instance2.name
}

resource "google_sql_user" "dareit_user" {
  name     = "dareit_user"
  password = var.db_password
  instance = google_sql_database_instance.my-instance2.name
}
