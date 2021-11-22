#  IAM assumable roles/policy/group/user

Configuration in this directory creates several individual IAM roles which can be assumed from a defined list of [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns).

The main difference between `iam-assumable-role` and `iam-assumable-roles` examples is that the former creates just a single role.

# Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.23 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_assumable_role_custom"></a> [iam\_assumable\_role\_custom](#module\_iam\_assumable\_role\_custom) | ../../modules/iam-assumable-role |  |
| <a name="module_iam_assumable_policy_custom"></a> [iam\_assumable\_policy\_custom](#module\_iam\_assumable\_policy\_custom) | ../../modules/iam-assumable-policy |  |
| <a name="module_iam_assumable_group_custom"></a> [iam\_assumable\_group\_custom](#module\_iam\_assumable\_group\_custom) | ../../modules/iam-assumable-group |  |
| <a name="module_iam_assumable_user_custom"></a> [iam\_assumable\_user\_custom](#module\_iam\_assumable\_user\_custom) | ../../modules/iam-assumable-user |  |
|

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_instance_profile_id"></a> [iam\_instance\_profile\_id](#output\_iam\_instance\_profile\_id) | IAM Instance profile's ID. |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | ARN of IAM role |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | Name of IAM role |
| <a name="output_iam_role_path"></a> [iam\_role\_path](#output\_iam\_role\_path) | Path of IAM role |
| <a name="output_iam_role_unique_id"></a> [iam\_role\_unique\_id](#output\_iam\_role\_unique\_id) | Unique ID of IAM role |
| <a name="output_role_requires_mfa"></a> [role\_requires\_mfa](#output\_role\_requires\_mfa) | Whether admin IAM role requires MFA |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
