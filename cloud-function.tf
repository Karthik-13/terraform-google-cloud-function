data "archive_file" "zip" {
  type        = "zip"
  source_dir = "${path.module}/${var.source_dir}/"
  output_path = "${path.module}/files/index.zip"
}


resource "google_storage_bucket" "bucket" {
  name = var.bucket_name
  labels = local.labels
}

resource "google_storage_bucket_object" "archive" {
  name   = "${var.function_name}/index.zip"
  bucket = google_storage_bucket.bucket.name
  source = data.archive_file.zip.output_path
}

resource "google_cloudfunctions_function" "cloud_function" {
  name                  = var.function_name
  description           = var.description
  runtime               = var.runtime

  available_memory_mb   = var.memory_size_mb
  source_archive_bucket = google_storage_bucket.bucket.name
  source_archive_object = google_storage_bucket_object.archive.name
  trigger_http          = true
  timeout               = var.timeout
  entry_point           = var.entry_point
  max_instances         = var.max_concurrency

  environment_variables = var.env_variables

  labels = local.labels

}