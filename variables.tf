## AZURE VARIABLES
variable "azure_region" {
  type = string
  description = "Region to be used for the Resource Group"
  default = "Germany West Central"
}

# AZURE Hosted zone for Rancher
variable "dns_zone_name" {
  type = string
  description = "DNS Zone to host Rancher in"
}

variable "dns_rancher_ui_name"{
  type = string
  description = "DNS A record for the Rancher UI"
}

variable "dns_resource_group_name" {
  type = string
  description = "Resource Group Name for the DNS Entries"
  
}

# Prefix Name for the AKS Cluster
variable "aks_name_prefix" {
  type = string
  description = "Prefix to use for the cluster name"
}


variable "aks_kubernetes_version" {
  type = string
  description = "Version of Rancher Management Cluster's Kubernetes"
  default = "1.20.9"
}

## RANCHER VARIABLES
# Rancher version to be deployed
variable "rancher_version" {
  type = string
  description = "Version of Rancher Server to install"
  default = "v2.6.3"
}

variable "rancher_chart_options" {
  type = list(object({
      name = string
      value = string
    }))
  description = "List of options for the Rancher Helm Chat"
  default = []
}

# Variables for Rancher's Ingress
variable "nginx_ingress_version" {
  type = string
  description = "Version of NGINX Ingress Controller"
  default = "4.0.17"
}

variable "nginx_ingress_ns" {
  type = string
  description = "Namespace where the NGINX Ingress Controller should be installed"
  default = "ingress-nginx"
}

