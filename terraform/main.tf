provider "virtualbox" {
  version = "0.2.1"
}

resource "virtualbox_vm" "ubuntu_vm" {
  name       = "ubuntu-vm"
  image      = "D:/path/to/ubuntu-18.04.5-live-server-amd64.iso"
  cpus       = 2
  memory     = "2048 mib"
  
  user_data  = <<EOF
    #cloud-config
    password: ubuntu
    chpasswd: { expire: False }
    ssh_pwauth: True
  EOF

  network_adapter {
    type = "nat"
  }

  storage {
    controller = "IDE"
    bus        = 0
    device     = 0
    size       = "20G"
  }
}
