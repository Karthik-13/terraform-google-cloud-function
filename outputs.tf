#Cloud Function Deployment Outputs
output "function_trigger_url" {
  value = google_cloudfunctions_function.cloud_function.https_trigger_url
  description = "URL which triggers the cloud function execution"
}
