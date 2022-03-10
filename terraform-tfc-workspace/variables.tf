variable "tfcb_org" {
    description = "The TFCB/TFE Org Name"
    default     = "bns-terraform-workshop-rs"
}
variable "hostname" {
    description = "tfc/tfcb hostname"
}

variable "appid" {
    description = "proj-sb ApplicationID"
    default     = "core"
}

variable "workspace_names" {
    default     = ["prod", "non prod", "dev"]
    description = "workspace names"
}


variable "prefix" {
    description = "proj-sb ApplicationID"
    default     = "proj-sb"
}
