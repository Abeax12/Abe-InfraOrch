# main.tf
terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "Infra-node" {
  name   = "Infra-node"
  image  = "./ubuntu.ova"
  cpus   = 24
  memory = 4096  # Ensure no quotes

  # Workaround: Post-creation memory configuration
  provisioner "local-exec" {
    command = "VBoxManage modifyvm '${self.name}' --memory 4096"
  }

  network_adapter {
    type = "nat"
  }

  user_data = file("${path.module}/user-data.yml")
}