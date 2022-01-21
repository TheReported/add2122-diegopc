# **Orquestación con Ansible**

***Nombre:*** Diego Peraza Cabo
<br>
***Curso:*** 2º ASIR


- **Ansible** es una plataforma de software libre para configurar y administrar ordenadores.

- Combina instalación **multi-nodo** (es decir: permite desplegar configuraciones de servidores y servicios por lotes), ejecuciones de **tareas ad hoc** y administración de configuraciones.

- Adicionalmente, **Ansible** es categorizado como una herramienta de **orquestación**.

## **Índice** <a id="0"></a>

  + [1. Máquinas que vamos a utlizar y configurar](#1)
  + [2. Instalación de SSH y Ansible](#2)
    + [2.1 Instalar Ansible](#2.1)
    + [2.2 Acceso por SSH a las máquinas](#2.2)
    + [2.3. El inventario](#2.3)
  + [3. Comandos ad-hoc](#3)
  + [4. Playbook](#4)
    + [4.1 Playbook ping](#4.1)
    + [4.2 Playbook install y uninstall](#4.2)
  + [5. Handlers](#5)
### **1. Máquinas que vamos a utlizar y configurar** <a id="1"></a>

| MVs | Nombre   | Rol    | SO        | IP           |
| --- | -------- | ------ | --------- | ------------ |
| MV1 | master23g | Master | GNU/Linux | 172.19.23.51 |
| MV2 | slave23g | Slave  | GNU/linux | 172.19.23.52 |
| MV3 | slave23w | Slave  | Windows10 | 172.19.23.11 |

- Configuración de la MV1.

  ![](img/1.png)

- Configuración de la MV2.

  ![](img/12.png)

- Configuración de la MV3.

  ![](img/4.png)

- Definir las máquinas "slave23g" y "slave23w" dentro del /etc/hosts de "master23g".

  ![](img/2.png)

- Comprobamos la conectividad de las máquinas.

  - master23g a slave23g y slave23w.

    ![](img/13.png)

    ![](img/5.png)

[Volver](#0)

### **2. Instalación de SSH y Ansible** <a id="2"></a>

#### **2.1 Instalar Ansible** <a id="2.1"></a>

- Primero buscamos el paquete y lo instalamos.

  ![](img/7.png)

  ![](img/8.png)

- Comprobamos que se ha instalado correctamente:

  ![](img/9.png)

- Añadimos al fichero de alias `/home/diego/.alias` lo siguiente:

  ![](img/10.png)

  ![](img/11.png)

#### **2.2 Acceso por SSH a las máquinas** <a id="2.2"></a>

- Instalamos el servicio SSH en MV2 y MV3.

  - MV2

    ![](img/16.png)

  - MV3

    ![](img/83.png)

    ![](img/84.png)

    ![](img/85.png)

- El usuario "diego" de la MV1 debe poder acceder por SSH sin clave a MV2 y MV3.

  - Para ello hay que hacer lo siguiente.

    ![](img/22.png)

    ![](img/23.png)

    ![](img/24.png)

  - Comprobamos que se ha copiado bien la clave pública.

    ![](img/25.png)

  - Comprobamos accediendo a slave23g por SSH.

    ![](img/26.png)

  - Ahora haremos lo mismo en la MV3.

    ![](img/86.png)

  - Comprobamos

    ![](img/88.png)

    ![](img/87.png)

#### **2.3. El inventario** <a id="2.3"></a>

- Creamos dos grupos `alumno23g` y `alumno23w` y dentro metemos las MV correspondientes.

  ![](img/89.png)

[Volver](#0)

### **3. Comandos ad-hoc** <a id="3"></a>

- Usaremos Ansible para comprobar la conectividad de las máquinas del inventario.

  - Conectividad con slave23g mediante el módulo `ping`.

    ![](img/36.png)

  - Conectividad con slave23w mediante el módulo `win_ping`.

    - Para tener conectividad con la MV de Windows10, tenemos que primero instalarnos el paquete windows con `ansible-galaxy`.

      ![](img/90.png)

    - Segundo tenemos que activar, configurar el servicio WinRM y agregamos variables al fichero `/etc/ansible/hosts`.

      ![](img/29.png)

      ![](img/30.png)

      ![](img/31.png)

      ![](img/32.png)

      ![](img/33.png)

      ![](img/91.png)

      - Una vez realizado todo lo anterior deberiamos de tener conectividad.

        ![](img/37.png)

      - Para que no te salga los avisos de color rosa, pondremos lo siguiente en el fichero `/etc/ansible/ansible.cfg`.

        ![](img/38.png)

- Usaremos Ansible para instalar 'neofetch' en las máquinas del inventario.

  - Primero necesitamos descargarnos el paquete de neofetch con `ansible-galaxy`.

    ![](img/39.png)

- Ahora instalamos ``neofetch`` en OpenSUSE mediante Ansible con el módulo ``zypper``.

  ![](img/50.png)

- Pondremos otra vez el comando.

  ![](img/51.png)

- Comprobamos que se ha instalado correctamente.

  ![](img/52.png)

- Por último, haremos lo mismo pero con la MV slave23w. En este paso tendremos que instalar el programa `chocolatey`.

  ![](img/41.png)

  ![](img/42.png)

- Una vez instalado y comprobado, instalamos en vez del programa `neofetch`, el programa `winfetch` con Ansible, con el módulo `win_chocolatey`. Porque `chocolatey` no tiene el paquete `neofetch`, pero igualmente es lo mismo.

  ![](img/45.png)

  ![](img/46.png)

- Comprobamos que se ha instalado correctamente.

  ![](img/47.png)


````
Puede que durante estos pasos tengamos algún error.
En mi caso tuve un error de que me faltaba un paquete de python, en concreto 'python-xml' en la máquina slave23g.
Lo solucioné poniendo lo siguiente.


````

[Volver](#0)

  ![](img/48.png)

### **4. Playbook** <a id="4"></a>

#### **4.1 Playbook ping** <a id="4.1"></a>

  - Crear el directorio `/home/diego/ansible23.d` y nos movemos dentro.

    ![](img/92.png)

  - Crear fichero `tarea-23-ping.yaml`, dentro de la carpeta `/home/diego/ansible23.d`, con el siguiente contenido.

    ![](img/56.png)

  - Comprobamos.

    ![](img/57.png)

#### **4.2 Playbook install y uninstall** <a id="4.2"></a>

  - Crear fichero `tarea-23-install.yaml`, dentro de la carpeta `/home/diego/ansible23.d`, con el siguiente contenido.

    ![](img/58.png)

  - Comprobamos.

    - slave23g

      ![](img/62.png)

    - slave23w

      ![](img/64.png)

  - Volvemos a introducir el comando y vemos que está todo correcto.

    ![](img/65.png)

  -  Crear fichero `tarea-23-uninstall.yaml`, dentro de la carpeta `/home/diego/ansible23.d`,con el siguiente contenido.

    ![](img/66.png)

  - Comprobamos

    - slave23g

      ![](img/67.png)

    - slave23w

      ![](img/68.png)

    - Volvemos a introducir el comando y vemos que está todo correcto.

      ![](img/69.png)

[Volver](#0)

### **5. Handlers** <a id="5"></a>

  -  Crear fichero `tarea-23-apache-on.yaml`, dentro de la carpeta `/home/diego/ansible23.d`,con el siguiente contenido.

    ![](img/94.png)

  - Comprobamos.

    - slave23g

      ![](img/72.png)

      ![](img/76.png)

    - slave23w

      ![](img/73.png)

      ![](img/74.png)

      ![](img/77.png)

  - Crear fichero `tarea-23-apache-off.yaml`, dentro de la carpeta `/home/diego/ansible23.d`,con el siguiente contenido.

    ![](img/96.png)

  - Comprobamos

    ![](img/80.png)

    ![](img/81.png)

    ![](img/82.png)

[Volver](#0)
