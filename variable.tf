variable "user" {
  type  = object({
    username = string
    password = string
    vsphere_server =string
  })
  default     = {
    username = "root"
    password = "PASSWORD"
    vsphere_server = "IP_SERVER"
  }
  description = "description"
}


variable "vm_name" {
  type        = string
  default     = "vm1"
  description = "vmname"
}




variable "num_cpus" {
  type        = number
  default     = "1"
  description = "num_cpus"
}

variable "memory" {
  type        = number
  default     = "1024"
  description = "memory"
}

variable "guest_id" {
  type        = string
  default     = "other3xlinux64Guest"
  description = "guest_id"
}



variable "disk" {
  type        = object({
    label = string
    size = number
  })
  default = {
    label = "disk0"
      size = 10
  }

}
