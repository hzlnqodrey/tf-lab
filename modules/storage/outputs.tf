output "bucket-name" {
  description = "Bucket names."
  value       = "module.instances_module.google_storage_bucket.static-site"
}