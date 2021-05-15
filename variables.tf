############################################################
# INPUT VARIABLES
############################################################
variable "namespace" {
  type        = string
  default     = "chaosmesh"
  description = "Namespace used for deploying the Chaos Mesh objects."
}

variable "create_namespace" {
  type        = string
  default     = true
  description = "Determines if the namespace should be created by the module."
}
