variable "location" {
  description = "Azure deployment region"
  type        = string
  default     = "Australia East"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "workload_name" {
  description = "Workload name"
  type        = string
  default     = "autoheal"
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "Abdi Hassan"
}