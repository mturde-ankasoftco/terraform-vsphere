#Provider
variable "vsphere_server" {
  default = "testvcenter" // vCenter Server FQDN or IP
  description = "vSphere server"
  type        = string
}

variable "vsphere_user" {
  default = "testuser@vsphere.local"
  description = "vSphere username"
  type        = string
  sensitive = true
}

variable "vsphere_password" {
  default = "testpassword"
  description = "vSphere password"
  type        = string
  sensitive   = true //if you don't want save variable to log
}

#Infrastructure
variable "deploy_vsphere_datacenter" {
  name = "dc-01"  
}

variable "deploy_vsphere_datastore" {
  name = "datastore-01"
}

variable "deploy_vsphere_compute_cluster" {
  name = "cluster-01"
}

variable "deploy_vsphere_network" {
  name = "VM Network"
}
