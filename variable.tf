variable "resource_name" {
  default = "sonali"
}

variable "region" {
  default = "westeurope"
}

variable "prefix" {
  default = "vm"
}

variable "allowed_ssh_cidrs" {
  default = ["106.216.224.43"]
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "admin_username" {
  default = "ubuntu"
}

variable "os_disk_gb" {
  default = 30
}

variable "tags" {
  default = {
    Name        = "MyWebServer"
    Environment = "Production"
    Owner       = "DevOpsTeam"
  }
}
