terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.28.1"
    }
  }
}

provider "tfe" {
}

# Create the core set of workspaces
resource "tfe_workspace" "proj-sb-appid-workspace" {
  for_each = toset(var.workspace_names)
    name = "${var.prefix}-${var.appid}-${each.value}"
   organization = var.tfcb_org # Update tf variables in TFCB to our workshop environment
}

