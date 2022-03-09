terraform {
  cloud {
    organization = "bns-terraform-workshop-rs"

    workspaces {
      name = "proj-sb-core-workspace-creator"
    }
  }
}


provider "tfe" {
  #hostname = var.hostname # Update tf variables in TFCB to app.terraform.io
  #token    = var.tfcb_token # Enter you TFCB Token. Mark as sensitive
  version  = "~> 0.27.0"
}

# Create an organization, Not required for this exercise
#resource "tfe_organization" "org" {
  # ...
#}

## Waiting on Feature Request to be able to build Variable Sets

# Create the core set of workspaces
resource "tfe_workspace" "test" {
  for_each = toset( ["proj-sb-APPID-Non-Prod", "proj-sb-APPID-Prod"] )
  name         = each.value # Update tf variables in TFCB to our workshop environment
  #organization = var.tfcb_org # Update tf variables in TFCB to our workshop environment
}
