# Auto-Healing Web Tier Challenge

## Overview

This solution implements a highly available and self-healing web application tier in Microsoft Azure using Terraform.

The solution consists of:

- Azure Resource Group
- Virtual Network
- Subnet
- Network Security Group (NSG)
- Public IP Address
- Azure Standard Load Balancer
- HTTP Health Probe
- Linux Virtual Machine Scale Set (VMSS)
- NGINX installed using cloud-init
- GitHub Actions Terraform validation workflow

The architecture is designed to provide:

- Infrastructure as Code (Terraform)
- N+1 availability
- Health monitoring
- Automatic instance repair
- Standardised naming conventions
- Resource tagging

---

# Architecture Diagram

docs/infrastructure.drawio.png

Key features:

- Azure Standard Load Balancer
- HTTP Health Probe
- VM Scale Set
- NGINX deployed via cloud-init
- Automatic Instance Repair enabled
- N+1 availability (2 VM instances)

---

# Steps to Run Terraform

## Prerequisites

- Terraform v1.6+
- Azure CLI
- Azure Subscription
- Git

---

## Terraform Init

Initialise the Terraform working directory:

```powershell
terraform init
```

---

## Terraform Validate

Validate the Terraform configuration:

```powershell
terraform validate
```

---

## Terraform Plan

Generate a deployment plan:

```powershell
terraform plan
```

Optionally save the plan:

```powershell
terraform plan -out=tfplan
```

---

## Terraform Apply (Optional)

Apply the infrastructure:

```powershell
terraform apply
```

Or apply a saved plan:

```powershell
terraform apply tfplan
```

---

## Terraform Destroy

Remove deployed resources:

```powershell
terraform destroy
```

---

# Assumptions

The following assumptions were made:

- Terraform vLatest is available.
- Azure resources are deployed into Australia East.
- Azure Load Balancer health probes are used to monitor application availability.
- NGINX is installed automatically using cloud-init.
- VM Scale Set automatic instance repair is enabled.
- Two VM instances are sufficient to meet the N+1 availability requirement.
- GitHub Actions is used for Terraform validation.
- Resource naming standards and tagging are applied consistently.
- Infrastructure deployment is optional as outlined in the assessment requirements.
- Validation was completed using Terraform Validate and Terraform Plan.

---

# Estimated Monthly Cost

Estimated pricing based on Azure Australia East and low-cost SKUs.

| Resource | SKU | Estimated Cost (AUD/Month) |
|-----------|------|--------------------------|
| Public IP | Standard | ~$4 |
| Load Balancer | Standard | ~$6 |
| VMSS (2 x Standard_B1s) | Standard_B1s | ~$8 |
| Virtual Network | Standard | ~$0 |
| NSG | Standard | ~$0 |
| Resource Group | N/A | $0 |

### Estimated Monthly Total

```text
~ AUD $18/month
```

The solution remains within the required budget of:

```text
≤ AUD $20/month
```

---

# Validation

Terraform validation completed successfully.

Example result:

```text
Plan: 12 to add, 0 to change, 0 to destroy
```

The plan included:

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Azure Load Balancer
- Backend Pool
- HTTP Health Probe
- Load Balancer Rule
- Virtual Machine Scale Set

---

# Key Design Decisions

### High Availability

N+1 availability is achieved through:

- Azure Standard Load Balancer
- 2 VM Scale Set instances
- Health probe monitoring

### Self-Healing

Self-healing capability is achieved through:

- Azure VM Scale Set
- Health monitoring
- Automatic Instance Repair
- Automatic instance replacement

### Web Tier

NGINX is automatically installed and configured using cloud-init during VM provisioning.

---

# Repository Structure

```text
.
├── .github
│   └── workflows
│       └── terraform.yml
├── cloud-init.yaml
├── locals.tf
├── main.tf
├── outputs.tf
├── providers.tf
├── variables.tf
├── versions.tf
├── infrastructure.drawio.png
└── README.md
```