terraform {
  required_providers {
    virtualbox = {
      source  = "eran132/vbox" # Plugin que permite a terraform interactuar con VirtualBox
      version = "~> 2.1.1"   # Versión del plugin
    }
  }
}

provider "virtualbox" {

    # Para VirtualBox instalado en tu propia PC, este bloque se deja VACIO. 
    # Terraform puede encontrar VirtualBox automáticamente.
}

# Paso 3: Definir la infraestructura que queremos (La Máquina Virtual)
resource "virtualbox_vm" "rocky_server" {

  name   = "rocky" # El nombre que verás en la ventana de VirtualBox
  
  # Archivo local de la máquina virtual 
  image  = "https://dl.rockylinux.org/pub/rocky/9/images/x86_64/Rocky-9-Vagrant-Vbox.latest.x86_64.vagrant.virtualbox.box"
  # https://www.vagrantup.com/
   
  cpus   = 1
  memory = "512 mib" # Medio GB de RAM es suficiente para una VM en formato nube sin interfaz
  gui    = true      # Muestra la ventana de la VM al iniciarla

  # Configuración de red. "nat" permite a la VM tener internet, pero también que nosotros entremos por SSH
  network_adapter {
    type           = "nat"
  }
}
