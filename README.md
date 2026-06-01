# 🚀 Infraestructura VirtualBox con Terraform

Este proyecto automatiza la creación y aprovisionamiento de una máquina virtual (VM) ligera utilizando **Terraform** y el proveedor de **VirtualBox**. El objetivo principal es desplegar un entorno de servidor estandarizado (Rocky Linux 9) mediante código (Infraestructura como Código - IaC), permitiendo configuraciones repetibles y aisladas.

---

## 🛠️ Tecnologías y Herramientas

*   **[Terraform](https://www.terraform.io/)**: Herramienta principal para orquestar y definir la infraestructura a través de su lenguaje declarativo (HCL).
*   **[VirtualBox](https://www.virtualbox.org/)**: Hipervisor de escritorio utilizado para ejecutar la máquina virtual localmente.
*   **[Rocky Linux 9](https://rockylinux.org/)**: Sistema operativo de la máquina virtual basado en formato Vagrant Box, optimizado para entornos de servidor.

---

## 📂 Estructura del Proyecto

*   `main.tf`: Archivo principal de configuración de Terraform. Define el proveedor (`eran132/vbox`) y las especificaciones técnicas de la máquina virtual (CPU, RAM, URL de la imagen, configuración de red, etc.).
*   `.gitignore`: Filtra los archivos temporales de estado de Terraform (`.tfstate`), binarios y las pesadas imágenes de sistema operativo (`.box`) para mantener limpio el repositorio.

---

## ⚙️ Características de la Máquina Virtual

| Propiedad | Configuración | Descripción |
| :--- | :--- | :--- |
| **Nombre** | `rocky` | Identificador dentro del administrador de VirtualBox. |
| **OS** | Rocky Linux 9 | Imagen optimizada descargada directamente desde repositorios oficiales. |
| **CPU** | 1 Core | Suficiente para tareas básicas y servicios en segundo plano. |
| **Memoria** | 512 MB | RAM asignada para funcionamiento en modo servidor. |
| **Interfaz (GUI)** | Activada (`gui = true`) | Permite ver la ventana al iniciar para depuración o login manual. |
| **Red** | NAT | Otorga internet a la VM aislando su tráfico de la red local. |

---

## 🚀 Guía de Uso Rápido

Sigue estos pasos para desplegar la infraestructura en tu entorno local:

### 1. Inicializar Terraform
Descarga los plugins y proveedores necesarios (`eran132/vbox`):
```bash
terraform init
```

### 2. Revisar el Plan de Ejecución
Verifica qué recursos se van a crear o modificar:
```bash
terraform plan
```

### 3. Aplicar la Configuración
Inicia el proceso de creación y descarga de la imagen. *(Nota: La primera vez descargará un archivo de ~350MB, esto puede tomar un par de minutos dependiendo de tu conexión).*
```bash
terraform apply
```

> **🔑 Acceso a la VM:**  
> Si la ventana te solicita inicio de sesión, las credenciales por defecto son:
> * **Usuario**: `vagrant`
> * **Contraseña**: `vagrant`

---

## 🧹 Limpieza

Cuando termines de usar la máquina y quieras liberar espacio o destruirla, simplemente ejecuta:
```bash
terraform destroy
```
*(Esto eliminará la máquina virtual de tu VirtualBox).*
