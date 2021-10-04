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

- Lo que sucede es que aparece la misma clave.

## **4. Personalización del prompt Bash**

- Configuraremos el fichero ``/home/peraza1/.bashrc`` en la máquina servidor.

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

- Generamos un nuevo par de claves.

![](img/037.png)

- Ahora vamos a copiar la clave pública

![](img/040.png)

- Comprobamos que la clave que acabamos de copiar se haya copiado correctamente.

![](img/041.png)

![](img/042.png)

- Comprobaremos en los clientes que ahora al accedes por SSH al usuario `peraza4`:

  - `cliente23g`, NO se pide password.

  - `cliente23w`, SI se pide password.

![](img/043.png)

![](img/081.png)

## **6. Uso de SSH como túnel para X**

- En el servidor instalaremos una aplicación de entorno gráfico (APP1), en este caso instalaremos **Geany**.

![](img/044.png)

- Modificaremos el fichero de configuración del servidor SSH GNU/Linux,para permitir la ejecución de aplicaciones gráficas, desde los clientes.

![](img/048.png)

- Reiniciaremos el servicio ``sshd``

![](img/046.png)

- Vamos al cliente y comprobamos que no está instalado el programa APP1.

![](img/047.png)

- Nos conectamos de forma remota al servidor, y ahora ejecutamos APP1 de forma remota.

![](img/049.png)

## **7. Aplicaciones Windows nativas**

- Instalaremos el emulador Wine en el `server23g`.

![](img/051.png)

- Comprobamos el funcionamiento de APP2 en `server23g` y accediendo dede `cliente23g`.

![](img/052.png)

![](img/053.png)

## **8. Restricciones de uso**

### **8.1 Restricción sobre un usuario**

- Modificaremos el fichero de configuración del servidor SSH GNU/Linux para restringir el acceso a determinados usuarios.

![](img/054.png)

![](img/056.png)

- Comprobamos la restricción al acceder desde los clientes

  - ``cliente23g``
![](img/057.png)

  - ``cliente23w``
  ![](img/082.png)

### **8.2 Restricción sobre una aplicación**

- Crearemos el grupo remoteapps ,y dentro incluiremos al usuario ``peraza4``

![](img/058.png)

![](img/059.png)

- Localizamos el programa APP1 y vemos que tiene permisos 755.

![](img/060.png)

- Cambiamos el grupo propietario a remoteapps , y pondremos los permisos del programa APP1 a 750.

![](img/061.png)

![](img/062.png)

- Comprobamos el funcionamiento en el servidor local y desde el cliente23g en remoto.

![](img/063.png)

![](img/064.png)

## **9. Servidor SSH en Windows**

- Añadir en ``C:\Windows\System32\drivers\etc\hosts`` el equipo ``cliente23g`` y ``cliente23w``.

![](img/074.png)

- Comprobamos haciendo ping a ambos equipos

![](img/075.png)

### **9.1 Instalación y configuración del servidor SSH en Windows**

- Descargaremos la última versión de OpenSSH.

![](img/065.png)

- Descomprimir en ``C:\Program Files\OpenSSH``

![](img/066.png)

- Iniciaremos PowerShell como Administrador y nos movemos hasta ``C:\Program Files\OpenSSH``.

- Ejecutamos los siguientes comandos para instalar los servicios `sshd` y `ssh-agent`:

```
PS> Set-ExecutionPolicy –ExecutionPolicy Bypass
PS> .\install-sshd.ps1
```
![](img/067.png)

- Al terminar debe indicar que los servicios se han instalado de forma satisfactoria. Podemos comprobar que se han
instalado los servicios con el siguiente comando: `PS> Get-Service sshd,ssh-agent`

![](img/069.png)

- Generamos las claves del servidor:

![](img/070.png)

![](img/071.png)

- Habilitamos una regla en el Firewall de Windows, que permita las conexiones TCP entrantes en el puerto 22 (SSH). Además iniciaremos el servicio ``sshd``.

![](img/072.png)

- Comprobamos.

![](img/073.png)

### **9.2 Comprobar acceso SSH de los Clientes Windows y GNU/Linux en el servidor SSH Windows**

- Windows (cliente23w)

![](img/076.png)

![](img/077.png)

![](img/080.png)

- GNU/Linux (cliente23g)

![](img/078.png)

![](img/079.png)
