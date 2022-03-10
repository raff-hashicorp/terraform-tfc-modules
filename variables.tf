variable "tfcb_org" {
    description = "The TFCB/TFE Org Name"
    default     = "bns-terraform-workshop-rs"
}
variable "hostname" {
    description = "tfc/tfcb hostname"
    default     = "app.terraform.io"
}

variable "appid" {
    description = "proj-sb ApplicationID"
    default     = "core"
}

variable "workspace_names" {
    default     = ["prod", "nonprod", "dev"]
    description = "workspace names"
}


variable "prefix" {
    description = "unique Prefix"
    default     = "proj-sb"
}
