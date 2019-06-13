#Common Resource Labels
variable "created_by" {
  type        = "string"
  description = "Person who created the terraform resources"
}

variable "description" {
  type        = "string"
  description = "Shore description on the resources created and their usage"
  default     = "This is a boilerplate Cloud Function"
}

variable "owner" {
  type        = "string"
  description = "Person who manages the resources"
}

#Cloud Function specific inputs
variable "project" {
  type        = "string"
  description = "Project where Cloud Function is to be deployed"
}

variable "location" {
  type        = "string"
  description = "Location (region or zone) where cloud function will be created."
}

variable "runtime" {
  type        = "string"
  description = "Runtime environment for the cloud function"  
}

variable "function_name" {
  type        = "string"
  description = "Name of the cloud function"
}

variable "bucket_name" {
  type        = "string"
  description = "GCP Storage Bucket where function code will reside"
}

variable "source_dir" {
  type        = "string"
  description = "Name of the directory with Function Code"
  default = "function"
}

variable "env_variables" {
  type        = "map"
  description = "Environment variables used by cloud function"

  default = {
    #"TF_MODULE" = "cloud_function" # Having a empty map will fail the Cloud Function deployment
  }
}

variable "entry_point" {
  description = "Entrypoint of the cloud function"
  type        = "string"
  default     = "hello_world"
}

variable "memory_size_mb" {
  type        = "string"
  description = "Memory of the cloud function in MB" 
  default     = 128
}

variable "timeout" {
  type        = "string"
  description = "Maximum amount of time your cloud function can run in seconds."  
  default     = 10
}

variable "max_concurrency" {
  type        = "string"
  description = "Maximum number of concurrent function instances that can be run."
  default     = 1
}








