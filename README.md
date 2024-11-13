# terraform-sso-ping-provisioning

## This is an example that shows hows to automate onboarding and off boarding PingOne SSO users in HCP Terraform and Terraform Enterprise.


### Instructions for Use

Two Terraform providers are used [tfe](https://registry.terraform.io/providers/hashicorp/tfe/latest) and [pingone](https://registry.terraform.io/providers/pingidentity/pingone/latest).

### Prerequisites

* [Configure PingOne for Terraform access](https://registry.terraform.io/providers/pingidentity/pingone/latest/docs#configure-pingone-for-terraform-access)
* [Setup Authentication for HCP Terraform or Terraform Enterprise.](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs#authentication)
  
### Required Variables

`environment_id` This is ping one enviroment ID. Instructions for finding this can be found [here](https://terraform.pingidentity.com/getting-started/pingone/).

`group` This is the ping one group to query for users

`organization` This the HCP Terraform or TFE organization name.


