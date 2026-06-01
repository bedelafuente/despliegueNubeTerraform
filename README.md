<div align="center">
  <h1>🚀 Infraestructura VirtualBox con Terraform</h1>
  <p>
    <strong>Aprovisionamiento automatizado de una máquina virtual ligera usando Infraestructura como Código (IaC).</strong>
  </p>

  <!-- Badges -->
  <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" alt="Terraform" />
  <img src="https://img.shields.io/badge/VirtualBox-183A61?style=for-the-badge&logo=virtualbox&logoColor=white" alt="VirtualBox" />
  <img src="https://img.shields.io/badge/Rocky%20Linux-10B981?style=for-the-badge&logo=rockylinux&logoColor=white" alt="Rocky Linux" />
  <img src="https://img.shields.io/badge/IaC-Automation-FF9900?style=for-the-badge" alt="IaC" />
</div>

<br />

## 📖 Sobre el Proyecto

Este proyecto automatiza la creación y configuración de una máquina virtual (VM) ligera utilizando **Terraform** y el proveedor de **VirtualBox**. El objetivo principal es desplegar un entorno de servidor estandarizado (Rocky Linux 9) mediante código, lo que permite crear infraestructuras de manera aislada, repetible y sin intervención manual.

---

## 🛠️ Tecnologías Utilizadas

*   **[Terraform](https://www.terraform.io/)**: Orquestación y definición de la infraestructura mediante lenguaje declarativo (HCL).
*   **[VirtualBox](https://www.virtualbox.org/)**: Hipervisor local para la ejecución de la máquina virtual.
*   **[Rocky Linux 9](https://rockylinux.org/)**: Sistema operativo optimizado para servidores, utilizado en formato de Vagrant Box para un despliegue ágil.

---

## 📂 Estructura del Repositorio

| Archivo | Descripción |
| :--- | :--- |
| 📄 `main.tf` | Archivo principal de Terraform. Define el proveedor (`eran132/vbox`) y las especificaciones de la VM (CPU, RAM, red). |
| 📄 `.gitignore` | Excluye del control de versiones el estado de Terraform (`.tfstate`), carpetas ocultas y archivos `.box` de gran tamaño. |

---

## ⚙️ Especificaciones de la Máquina Virtual

La infraestructura definida aprovisionará una VM con las siguientes características:

- **Nombre:** `rocky` (Identificador en VirtualBox).
- **Sistema Operativo:** Rocky Linux 9.
- **CPU:** 1 Core.
- **Memoria RAM:** 512 MB (Suficiente para operaciones de servidor base).
- **Red:** NAT (Permite conexión a Internet y acceso por SSH aislado).
- **Interfaz (GUI):** Habilitada para facilitar la depuración visual.

---

## 🚀 Guía de Despliegue Rápido

Sigue estos sencillos pasos para levantar el entorno en tu máquina local:

### 1. Inicializar el entorno
Descarga los plugins y proveedores necesarios para que Terraform pueda interactuar con VirtualBox.
```bash
terraform init
```

### 2. Previsualizar cambios
Revisa el plan de ejecución para confirmar los recursos que Terraform creará.
```bash
terraform plan
```

### 3. Aplicar configuración y desplegar
Inicia el aprovisionamiento. *(Nota: La primera ejecución descargará la imagen base de Rocky Linux, lo cual puede tardar un par de minutos según tu conexión).*
```bash
terraform apply
```

> **🔑 Credenciales de Acceso:**  
> Una vez iniciada la máquina virtual, si se requiere inicio de sesión, utiliza:
> * **Usuario:** `vagrant`
> * **Contraseña:** `vagrant`

---

## 🧹 Limpieza del Entorno

Cuando hayas finalizado tus pruebas, puedes destruir la infraestructura y liberar los recursos con un solo comando:

```bash
terraform destroy
```
*(Esto eliminará permanentemente la máquina virtual de VirtualBox).*

---

<div align="center">
  Hecho con ❤️ y automatización.
</div>
