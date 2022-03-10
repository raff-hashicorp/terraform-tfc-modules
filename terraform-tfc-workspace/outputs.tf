# Output variable definitions

output "workspace" {
  description = "workspace name"
  value       = tfe_workspace.proj-sb-appid-workspace.name
}
