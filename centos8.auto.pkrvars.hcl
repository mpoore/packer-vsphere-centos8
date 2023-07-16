# ----------------------------------------------------------------------------
# Name:         centos8.auto.pkrvars.hcl
# Description:  Required vSphere variables for CentOS 8 Packer builds
# Author:       Michael Poore (@mpoore)
# URL:          https://github.com/mpoore/packer-vsphere-centos8
# ----------------------------------------------------------------------------

# ISO Settings
os_iso_file                     = "CentOS-Stream-8-x86_64-latest-dvd1.iso"
os_iso_path                     = "os/centos/8"

# OS Meta Data
vm_os_family                    = "Linux"
vm_os_type                      = "Server"
vm_os_vendor                    = "CentOS"
vm_os_version                   = "8"

# VM Hardware Settings
vm_hardware_version             = 19
vm_firmware                     = "efi"
vm_cpu_sockets                  = 1
vm_cpu_cores                    = 1
vm_mem_size                     = 2048
vm_nic_type                     = "vmxnet3"
vm_disk_controller              = ["pvscsi"]
vm_disk_size                    = 32768
vm_disk_thin                    = true
vm_cdrom_type                   = "sata"

# VM Settings
vm_cdrom_remove                 = true
vcenter_convert_template        = false
vcenter_content_library_ovf     = true
vcenter_content_library_destroy = true

# VM OS Settings
vm_guestos_type                 = "centos8_64Guest"
vm_guestos_language             = "en_GB"
vm_guestos_keyboard             = "gb"
vm_guestos_timezone             = "UTC"

# Provisioner Settings
script_files                    = [ "scripts/updates.sh",
                                    "scripts/pki.sh",
                                    "scripts/sshd.sh",
                                    "scripts/hashicorp.sh",
                                    "scripts/cloud-init.sh",
                                    "scripts/salt-minion.sh",
                                    "scripts/motd.sh",
                                    "scripts/cleanup.sh" ]
inline_cmds                     = []