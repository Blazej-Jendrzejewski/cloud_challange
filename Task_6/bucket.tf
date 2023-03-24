resource "google_storage_bucket" "my-bucket2a" {
  name          = var.bucket_name2a
  location      = "US"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
  }

  uniform_bucket_level_access = true
}
