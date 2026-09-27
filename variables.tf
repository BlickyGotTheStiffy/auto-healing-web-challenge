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

variable "vm_admin_username" {
  description = "VM Admin username"
  type        = string
  default     = "azurermadmin"
}

variable "vm_size" {
  description = "VM Scale Set Size"
  type        = string
  default     = "Standard_B1s"
}

variable "instance_count" {
  description = "Number of VMSS instances"
  type        = number
  default     = 2
}

