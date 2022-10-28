# supply the tenant ID for your Azure Tenant here
variable "tenant_id" {
  default = "2b32bd4c-5b71-4529-ba90-e254be83fd2d"
}
# App registration name for the Federated Credential for GH Actions
variable "gh_actions_appname" {
  default = "GithubActions-HSW"
}
# App registration name for the HSW runtimes (=connectors)
variable "hsw_runtimes_appname" {
  default = "HSW-Runtimes"
}
# Name for the federated credential: GH Actions can deploy resources (on push)
variable "application_fc_name" {
  default = "GithubActions-HSW-FC"
}
# Name for the federated credential: GH Actions can deploy resources (on pull-request)
variable "application_fc_pr_name" {
  default = "GithubActions-HSW-FC-Pullrequest"
}
# name of your fork of HSW
variable "github_repo" {
  default = "FOJEROLE/BachelorArbeit"
}
# name of the storage account that'll hold the Terraform State for HSW deployments
variable "tf_state_storageaccount" {
  default = "hswtfstate"
}
# name of the storage container that'll hold the Terraform State for HSW deployments
variable "tf_state_container" {
  default = "hswtfstate"
}
# RG location
variable "common_resourcegroup_location" {
  default = "northeurope"
}
# Resource group that'll contain common resources, such as the ACR
variable "common_resourcegroup" {
  default = "hsw-common"
}
# Name of the Azure Container Registry that'll hold all docker images
variable "acr_name" {
  default = "acrhsw"
}