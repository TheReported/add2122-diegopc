# **Acceso Remto SSH**

## **1. Preparativos**

#### **1.1 Servidor SSH**
![](img/001.png)

![](img/002.png)

- Añadiremos en ``/etc/hosts`` los siguientes equipos:

![](img/003.png)

- Haremos ping en los dos equipos cliente desde el servidor.

![](img/004.png)

![](img/005.png)

- Crearemos los siguientes usuarios con su carpeta home ``useradd -m perazaX`` en server23g:

![](img/006.png)

#### **1.2 Cliente GNU/Linux**

![](img/007.png)

- Añadiremos en ``/etc/hosts`` los siguientes equipos:

![](img/008.png)

- Comprobamos haciendo ping a ambos equipos:

![](img/009.png)

#### **1.3 Cliente Windows**

- Instalaremos el software PuTTY:

![](img/020.png)

- Configuramos el cliente:

![](img/019.png)

- Añadiremos en `` C:\Windows\System32\drivers\etc\hosts`` los siguientes equipos:

![](img/010.png)

- Comprobamos haciendo ping a ambos equipos:

![](img/011.png)

## **2. Instalación del servicio SSH en GNU/Linux**

- Instalaremos el servicio SSH en el server23g por comandos : ``zypper install openssh``

- Verificamos que el servicio está en ejecución:

![](img/012.png)

- Comprobamos que el servicio está escuchando por el puerto 22:

![](img/013.png)
### **2.1 Primera conexión SSH desde cliente GNU/Linux**

- Iremos al cliente23g, comprobaremos la conectividad con el servidor, y comprobar los puertos abiertos en el servidor.

![](img/014.png)

![](img/015.png)

- Desde el cliente GNU/Linux nos conectamos mediante ``ssh peraza1@server23g``

![](img/016.png)

- A partir de ahora cuando nos conectamos sólo nos pide la contraseña:

![](img/017.png)

- Comprobamos contenido del fichero ``$HOME/.ssh/known_hosts``en el equipo cliente.

![](img/018.png)

### **2.2 Primera conexión SSH desde cliente Windows**

![](img/021.png)

![](img/022.png)

![](img/023.png)

![](img/024.png)

## **3. Cambiamos la identidad del servidor**

- Comprobamos que existen los ficheros ``ssh_host*key`` y ``ssh_host*key.pub``en el directorio ``/etc/shh``

![](img/025.png)

- Modificaremos el fichero de configuración SSH para dejar una única línea:

![](img/026.png)

### **3.1 Regenerar certificados**

- Vamos a combiar o volver a generar nuevas claves públicas/privadas que identifican nuestro servidor.

![](img/027.png)

- Reiniciar el servicio SSH y comprobarlo.

![](img/028.png)


### **3.2 Comprobamos**

- Comprobar qué sucede al volver a conectarnos desde los dos clientes, usando los usuarios peraza2 y peraza1. ¿Qué sucede?

![](img/029.png)

![](img/030.png)

![](img/031.png)

- Lo que sucede es que aparece la misma key privada.

## **4. Personalización del prompt Bash**

- Configuraremos el fichero ``/home/peraza1/.bashrc``en la máquina servidor.

![](img/032.png)

- Además, crearemos el fichero `` /home/1er-apellido-alumno1/.alias``, donde pondremos el siguiente contenido:

![](img/033.png)

- Comprobaremos el funcionamiento de la conexión SSH desde cada cliente.

**Windows**

![](img/034.png)

![](img/035.png)

**Linux**

![](img/036.png)


## **5. Autenticación mediante claves públicas**



## **6. Uso de SSH como túnel para X**
