data "vsphere_datacenter" "vdc" {
  name = "dc1"
}

data "vsphere_datastore" "datastore" {
  name = "datastore1"
  datacenter_id = data.vsphere_datacenter.vdc.id
}

data "vsphere_resource_pool" "pool" {
  name = "cluster/Resources"
  datacenter_id = data.vsphere_datacenter.vdc.id
}

data "vsphere_network" "network" {
  name = "VM Network"
  datacenter_id = data.vsphere_datacenter.vdc.id

}