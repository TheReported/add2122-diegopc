# **Contenedores con Docker**

### **1. Instalación**

- Instalamos docker en OpenSUSE:

![](img/001.png)

- Inicamos el servicio, lo habilitamos para que automáticamente se inicie al encender la máquina, miraremos el estado del servicio y por último consultaremos que el estado de IP_FORWARD esté activo.

![](img/002.png)

#### **1.1 Primera prueba**

**Como usuario root**

- Incluiremos a nuestro usuario (diego) como miembro del grupo docker y mostraremos que pertenecemos al grupo docker.

![](img/003.png)

- Cerraremos sesión y volveremos a entrar al sistema con nuestro usuario normal.

**Como usuario normal**

- Comprobamos que se muestra la información de las versiones cliente y servidor.

![](img/006.png)

- Descargaremos una imagen `hello-world`, creamos un contenedor y ejecutamos la aplicación que hay dentro. Además comprobamos que ahora vemos la nueva imagen descargada en nuestro equipo local.

![](img/007.png)

- Vemos que hay un contenedor en estado `Exited`, pararemos el contenedor identificado por su IDContainer, y por último lo eliminaremos.

![](img/008.png)

#### **1.2 Alias**

- Para trabajar de forma más rapida crearemos el siguiente fichero y pondremos el siguiente contenido.

![](img/009.png)

![](img/010.png)

### **2. Creación manual de nuestra imagen**

#### **2.1 Crear un contenedor manualmente**

**Descargamos una imagen**

- Buscamos  en los repositorios de Docker Hub contenedores con la etiqueta ``debian``.

![](img/011.png)

- Descargamos una imagen en local y comprobamos que se ha descargado correctamente.

![](img/012.png)

**Creamos un contenedor**

- Vamos a crear un contenedor con nombre ``app1debian`` a partir de la imagen ``debian``, y ejecutaremos el programa ``/bin/bash`` dentro del contenedor:

![](img/013.png)

#### **2.2 Personalizar el contenedor**

**Instalar aplicaciones dentro del contenedor**

- Comprobamos que estamos en Debian, actualizamos los paquetes, instalamos nginx y vim en el contenedor.

![](img/014.png)

![](img/015.png)

- Comprobamos que se han descargado las dos aplicaciones.

![](img/016.png)

![](img/017.png)

**Crear un fichero HTML `holamundo1.html`**

![](img/018.png)

**Creamos un script `/root/server.sh` y le pondremos permisos de ejecución**

![](img/019.png)

![](img/020.png)

![](img/021.png)

#### **2.3 Creamos una imagen a partir del contenedor**

- Abriremos otra ventana de terminal, y a partir del contenedor modificado vamos a crear la nueva imagen que se llamará `diego/nginx1`. Comprobamos que se ha creado la nueva imagen, pararemos el contenedor y los eliminamos.

![](img/022.png)

![](img/023.png)

### **3. Crear un contenedor a partir de nuestra nueva imagen**

#### **3.1 Creamos contenedor con Nginx**

- Iniciamos el contenedor a partir de la imagen anterior.

![](img/024.png)

- No cerraremos la terminal, ni pararemos el contenedor.

#### **3.2 Comprobamos**

- Abrimos una nueva terminal, y mostramos los contenedores en ejecución.

![](img/025.png)

- Abrimos el navegador web y pondremos la siguiente URL `0.0.0.0:49153`.

![](img/026.png)

- Comprobamos el acceso al fichero HTML.

![](img/027.png)

- Paramos y eliminamos el contenedor.

![](img/028.png)

#### **3.3 Migrar la imagen a otra máquina**

**Exportar imagen Docker a fichero tar:**

![](img/031.png)

**Importar imagen Docker desde fichero:**

- Cargamos la imagen Docker de nuestro compañero a partir del fichero tar. Comprobamos que la nueva imagen está disponible y probamos a crear un contenedor a partir de la nueva imagen.

![](img/030.png)

#### **3.4 Capas**

- Consultamos las capas de la imagen del compañero.

![](img/032.png)

### **4. Dockerfile**

#### **4.1 Preparar ficheros**

- Crear el directorio `/home/diego/docker23local` y entramos en él para crear los ficheros ``holamundo2.html`` y ``Dockerfile`` con el siguiente contenido:

![](img/033.png)

#### **4.2 Crear imagen a partir del `Dockerfile`**

- Entramos al directorio `/home/diego/docker23local`, y construimos una nueva imagen a partir del ``Dockerfile``.

![](img/034.png)

- Comprobamos que aparece nuestra nueva imagen.

![](img/035.png)

#### **4.3 Crear contenedor y comprobar**

- Creamos un contenedor con el nombre `app4nginx2`a partir de la imagen ``diego/nginx2`` y desde otra terminal comprobamos que el contenedor está en ejecución y en escucha por el puerto deseado.

![](img/036.png)

- Comprobamos en el navegador.

![](img/037.png)

![](img/038.png)

#### **4.4 Usar imágenes ya creadas**

- Creamos el directorio `docker23web`y entramos para crear los ficheros `holamundo3.html` y `Dockerfile` con el siguiente contenido:

![](img/039.png)

- Creamos la imagen y el contenedor, y comprobamos el acceso a `holamundo3.html`

![](img/040.png)

![](img/041.png)

![](img/042.png)

![](img/043.png)

### **5. Docker Hub**

#### **5.1 Creamos los ficheros necesarios**

Crear nuestra imagen `holamundo`:

- Crear carpeta `docker23push` y entrar para crear un script (`holamudno23.sh`) y el fichero `Dockerfile` con el siguiente contenido:

![](img/044.png)

- Creamos la imagen `diego/holamundo` a partir del `Dockerfile` anterior.

![](img/045.png)

- Comprobamos que se crea un contenedor que ejecuta el script. Lo eliminaremos si todo va bien.

![](img/046.png)

![](img/047.png)

#### **5.2 Subir la imagen a Docker Hub**

- Nos registramos en Docker Hub.

![](img/048.png)

- Abrimos la conexión, eitquetamos la imagen con `version1` y subimos la imagen a los repositorios de Docker.

![](img/049.png)

#### **6. Limpiar contenedores e imágenes**

- Paramos y eliminamos todos los contenedores:

![](img/050.png)

- Eliminamos todas las imágenes:

![](img/051.png)

![](img/052.png)

![](img/053.png)
