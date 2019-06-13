/* 
GCP resource Labels should only consist of lowercase alphanumeric letters, hypens (-) and underscores (_)
Hence instead of anticipation, given label related inputs need to be converted to lowercase
*/
locals {
  labels = {
    created_by   = lower(var.created_by)
    description  = lower(var.description)
    owner        = lower(var.owner)
  }
}