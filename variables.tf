############################################################
# INPUT VARIABLES
############################################################
variable "name" {
  type        = string
  description = "The name of the application that will appear in the AppDynamics UI."
}

variable "description" {
  type        = string
  default     = ""
  description = "The description of the application that will appear in the AppDynamics UI."
}

variable "create_apm" {
  type        = bool
  default     = true
  description = "Determines if an APM application will be created."
}

variable "create_eum" {
  type        = bool
  default     = true
  description = "Determines if an EUM application will be created."
}
