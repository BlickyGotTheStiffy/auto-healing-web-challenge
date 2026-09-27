locals {
  region_code = "aue"

  naming = {
    rg   = "rg-${var.workload_name}-${var.environment}-${local.region_code}"
    vnet = "vnet-${var.workload_name}-${var.environment}-${local.region_code}"
    snet = "snet-${var.workload_name}-${var.environment}-${local.region_code}"
    nsg  = "nsg-${var.workload_name}-${var.environment}-${local.region_code}"
    pip  = "pip-${var.workload_name}-${var.environment}-${local.region_code}"
    lb   = "lb-${var.workload_name}-${var.environment}-${local.region_code}"
    vmss = "vmss-${var.workload_name}-${var.environment}-${local.region_code}"
  }

  common_tags = {
    Environment = var.environment
    Application = "Auto-Healing-Web-Tier"
    Owner       = var.owner
    ManagedBy   = "Terraform"
    Purpose     = "TechnicalAssessment"
    Workload    = var.workload_name
  }
}