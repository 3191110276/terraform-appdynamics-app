############################################################
# REQUIRED PROVIDERS
############################################################
terraform {
  required_providers {
    appdynamics = {
      source = "3191110276/appdynamics"
      version = "0.1.1"
    }
  }
}


############################################################
# CREATE APM APP IN APPD
############################################################
resource "appdynamics_apm_application" "app" {
  count = var.create_apm ? 1 : 0
  
  name = var.name
  description = var.description
}


############################################################
# CREATE EUM APP IN APPD
############################################################
resource "appdynamics_eum_application" "app" {
  count = var.create_eum ? 1 : 0
  
  name = "${var.name}_eum"
  description = var.description
}


############################################################
# DEFINE EUM KEY OUTPUT
############################################################
output "eum_key" {
  value = appdynamics_eum_application.app[0]
}
