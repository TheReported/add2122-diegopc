# **Vagrant con VirtualBox**

### **1. Instalación de Vagrant**

- Instalamos Vagrant en la máquina real y comprobamos que las versiones de Vagrant y VirtualBox sean compatibles entre sí.

![](img/001.png)

### **2. Proyecto Celtics**

#### **2.1 Imagen, caja o box**

- Descargaremos la caja que necesitamos a través de vagrant y comprobamos con el comando ``vagrant box list``.

![](img/002.png)

![](img/003.png)

#### **2.2 Directorio**

- Creamos un directorio para nuestro proyecto.

![](img/004.png)

- Ahora dentro de esta carpeta crearemos un nuevo fichero nuevo llamado ``Vagrantfile`` con el siguiente contenido.

![](img/006.png)

#### **2.3 Comprobar**

- Debemos de estar dentro de `vagrant23-celtics`, e iniciaremos una nueva instancia de la máquina.

![](img/008.png)

- Una vez iniciada la máquina nos conectaremos a nuestra MV usando SSH.

![](img/009.png)

### **3. Proyecto Hawks**

#### **3.1 Creamos proyecto Hawks**

- Creamos la carpeta `vagrant23-hawks`, y dentro crearemos el fichero `Vagrantfile` con el siguiente contenido:

![](img/035.png)

![](img/013.png)

- Iniciamos la MV y entraremos por SSH, para instalar dentro apache2.

![](img/016.png)

![](img/017.png)

#### **3.2 Comprobar**

- Vemos la redirección de puertos de la máquina Vagrant.

![](img/015.png)

- Abrimos el navegador web con el siguiente URL.

![](img/018.png)

### **4. Suministro**

- Apgaremos la MV y la destruimos para volver a empezar.

![](img/019.png)

#### **4.1 Proyecto Lakers**

- Creamos directorio `vagrant23-lakers`, entraremos en la carpeta y crearemos la carpeta html con el siguiente contenido:

![](img/020.png)

- Crearemos el script `install_apache.sh` dentro del proyecto.

![](img/021.png)

- Además crearemos el fichero de configuración `Vagrantfile` con el siguiente contenido:

![](img/024.png)

![](img/023.png)

- Una vez terminado el fichero de configuración, iniciaremos la MV.

![](img/025.png)

- Podemos ver mensajes en los que se ve como se van instalando los paquetes de Apache.

![](img/026.png)

- Entraremos dentro de la MV  con SSH para verificar si se ha instalado apache2.

![](img/027.png)

- Volveremos al fichero `Vagrantfile` , pondremos la siguiente línea y recargaremos la configuración.

![](img/028.png)

- Comprobamos abriendo el navegador en la máquina real con la siguiente URL:

![](img/029.png)

#### **4.2 Proyecto Raptors**

- Creamos el directorio `vagrant23-raptors` ,y copiaremos el fichero ``Vagrantfile`` de la carpeta `vagrant23-lakers`.

![](img/036.png)

- Modificaremos el archivo con el siguiente contenido:

![](img/032.png)

- Crearemos la carpeta `manifests` y dentro el archivo `diego23.pp` de la siguiente forma:

![](img/031.png)

- Copiaremos el script de la carpeta `vagrant23-lakers` , para nuestro proyecto raptors.

![](img/033.png)

- Iniciaremos la MV y entraremos por SSH, para comprobar de que se ha instalado nuestro paquete correctamente.

![](img/034.png)

### **5. Proyecto Bulls**

#### **5.1 Preparar la MV VirtualBox**

- Iremos a la MV que tengamos ya configurada y con el OpenSSH instalado.

- Crearemos el usuario vagrant y pondremos como clave `vagrant` al usuario ``root`` y ``vagrant``.

![](img/100.png)

- Creamos la carpeta de configuración SSH.

![](img/101.png)

- Descargamos la clave pública.

![](img/102.png)

- Modificamos los permisos de la carpeta.

![](img/103.png)

- Modificamos el propietario de la carpeta.

![](img/104.png)

- Añadimos la siguiente línea al fichero `/etc/sudoers`

![](img/105.png)

- Comprobamos que la versión de las VirtualBox Guest Additions sea compatible.

![](img/106.png)

- Apagaremos la MV.

![](img/110.png)

#### **5.2 Crear caja Vagrant**

- Creamos la carpeta `vagrant23-bulls` , mostramos los nombres de nuestras MVs y creamos nuestra propia caja.

![](img/109.png)

- Añadimos la nueva caja creada por nosotros y consultamos la lista de cajas de Vagrant disponibles.

![](img/111.png)

#### **5.3 Usar la nueva caja**

- Creamos el fichero `Vagrantfile`.

![](img/112.png)

- Nos conectamos por SSH.

![](img/113.png)
