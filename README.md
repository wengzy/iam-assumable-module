#  terffaform modile for IAM assumable roles/policy/group/user

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
| <a name="module_iam_assumable_role_custom"></a> [iam\_assumable\_role\_custom](#module\_iam\_assumable\_role\_custom) | ../../modules/iam-assumable-role_custom |  |
| <a name="module_iam_assumable_policy_custom"></a> [iam\_assumable\_policy\_custom](#module\_iam\_assumable\_policy\_custom) | ../../modules/iam-assumable-policy_custom |  |
| <a name="module_iam_assumable_group_custom"></a> [iam\_assumable\_group\_custom](#module\_iam\_assumable\_group\_custom) | ../../modules/iam-assumable-group_custom |  |
| <a name="module_iam_assumable_user_custom"></a> [iam\_assumable\_user\_custom](#module\_iam\_assumable\_user\_custom) | ../../modules/iam-assumable-user_custom |  |
|

## Resources

No resources.

## Inputs

No inputs.

## Outputs
No Outputs.
