output "id" {
  description = "The workspace's human-readable ID, which looks like `<ORGANIZATION>/<WORKSPACE>`."
  value       = tfe_workspace.proj-sb-appid-workspace.id
}

output "external_id" {
  description = "The workspace's opaque external ID, which looks like `ws-<RANDOM STRING>`"
  value       = tfe_workspace.proj-sb-appid-workspace.external_id
}
