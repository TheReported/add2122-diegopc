# **Servicio de Directorio con comandos**

### **1. Prerequisitos**

- Revisaremos ``/etc/hostname``

![](img/001.png)


- Revisaremos ``/etc/hosts``

![](img/002.png)

- Comprobamos la salida de los siguientes comandos:

![](img/003.png)

### **2. Instalar el Servidor LDAP**

##### **2.1 Instalación del paquete**

- Instalamos el script de instalación:

![](img/004.png)

- Comprobamos que la versión es >= 1.4.*:

![](img/005.png)

##### **2.2 Configurar la instancia**

- Creamos el fichero ``/root/instance.inf`` con el siguiente contenido.

![](img/012.png)

- Creamos una nueva instancia y comprobamos el estado actual de la instancia.

![](img/007.png)

- Creamos el fichero /root/.dsrc con el siguiente contenido:

![](img/008.png)

##### **2.3 Comprobamos el servicio**

- Comprobamos si el servicio está activo:

![](img/009.png)

- Comprobamos que el servidor LDAP es accesible desde la red, pero primero permitiremos el servicio ``ldap`` y ``ldaps`` en el cortafuegos:

 ![](img/024.png)

 ![](img/010.png)

##### **2.4 Comprobamos el acceso al contenido del LDAP**

- Mostramos el contenido de nuestra base de datos LDAP:

![](img/011.png)

- Hacemos una consulta usando usuario/clave:

![](img/013.png)

### **3. Añadir usuarios LDAP por comandos**

##### **3.1 Buscar Unidades Organizativas**

  ![](img/014.png)

##### **3.2 Agregar usuarios**

- Creamos el fichero `mazinger-add.ldif` con la siguiente información para crear el usuario ``mazinger``:

![](img/015.png)

##### **3.3 Comprobar el nuevo usuario**

- Escribimos los datos del fichero ldif anterioren LDAP y comprobamos si se ha creado el usuario correctamente en el LDAP:

![](img/016.png)

### **4. Contraseñas encriptadas**

##### **4.1 Herramienta slappasswd**

- Instalamos la herramienta ``slappasswd``:

![](img/017.png)

##### **4.2 Agregar más usuarios con clave encriptada**

- **Koji**

![](img/018.png)

![](img/019.png)

![](img/020.png)

- **Boss**

![](img/021.png)

![](img/022.png)

![](img/023.png)

- **Doctor Infierno**

![](img/027.png)

![](img/028.png)

![](img/029.png)

##### **4.3 Comprobar los usuarios creados**

- Iremos a la MV Cliente y comprobamos que el puerto LDAP del servidor está abierto.

![](img/025.png)

- Consultamos los usuarios LDAP que tenemos en el servicio de directorio remoto.

![](img/030.png)
