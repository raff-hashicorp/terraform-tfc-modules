
# Terraform Cloud Workspace

This module provisions a Terraform Cloud / Terraform Enterprise workspace

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | Name of the workspace | string | n/a | yes |
| organization | Name of the organization. | string | n/a | yes |


## Outputs

| Name | Description |
|------|-------------|
| external\_id | The workspace's opaque external ID, which looks like `ws-<RANDOM STRING>` |
| id | The workspace's human-readable ID, which looks like `<ORGANIZATION>/<WORKSPACE>`. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Appendix
