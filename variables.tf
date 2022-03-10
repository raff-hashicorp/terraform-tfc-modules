variable "tfcb_org" {
    description = "The TFCB/TFE Org Name"
    default     = "bns-terraform-workshop-rs"
}
variable "hostname" {
    description = "tfc/tfcb hostname"
}

variable "workspace_names" {
    default     = ["bob", "kevin", "stewart"]
    description = "workspace names"
}
