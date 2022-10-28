# Create an application for HSW Runtimes
resource "azuread_application" "hsw-runtimes" {
  display_name     = var.hsw_runtimes_appname
  owners           = [data.azuread_client_config.current.object_id]
  sign_in_audience = "AzureADMyOrg"

  required_resource_access {
    resource_app_id = "00000003-0000-0000-c000-000000000000" # Microsoft Graph
    resource_access {
      id   = "e1fe6dd8-ba31-4d61-89e7-88639da4683d" # User.ReadWrite
      type = "Scope"
    }
  }
  feature_tags {
    enterprise = true
  }
}

# Create a service principal
resource "azuread_service_principal" "hsw-runtimes-sp" {
  application_id = azuread_application.hsw-runtimes.application_id

}

# create password for the GH Actions SP
resource "azuread_application_password" "hsw-runtimes-sp-password" {
  application_object_id = azuread_application.hsw-runtimes.object_id
}
