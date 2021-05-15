############################################################
# INPUT VARIABLES
############################################################
variable "namespace" {
  type        = string
  default     = "chaosmesh"
  description = "Namespace used for deploying the Chaos Mesh objects."
}
