terraform {
  cloud {
    organization = "bns-terraform-workshop-rs"

    workspaces {
      name = "proj-sb-core-workspace-creator"
    }
  }
  
  terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.28.1"
    }
  }
}

provider "tfe" {
  # Configuration options
}
}


provider "tfe" {
  hostname = var.hostname # Update tf variables in TFCB to app.terraform.io
  token    = var.tfcb_token # Enter you TFCB Token. Mark as sensitive
}

# Create an organization, Not required for this exercise
#resource "tfe_organization" "org" {
  # ...
#}

## Waiting on Feature Request to be able to build Variable Sets

# Create the core set of workspaces
resource "tfe_workspace" "proj-sb-appid-workspace" {
  for_each = toset(var.workspace_names)
    name = each.value
 
  organization = var.tfcb_org # Update tf variables in TFCB to our workshop environment
}
