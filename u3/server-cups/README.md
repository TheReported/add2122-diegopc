# **P1: Servidor de Impresión GNU/Linux (CUPS)**

## **1. Servidor de Impresión**

- Instalar el sistema de impresión CUPS para GNU/Linux y verificamos el estado del servicio.

![](img/001.png)

- Comprobamos la conexión a la interfaz web de CUPS.

![](img/002.png)

- Editar fichero de configuración CUPS (`/etc/cups/cups.conf`).

![](img/003.png)

![](img/013.png)

- Reiniciamos el servicio CUPS.

![](img/004.png)

- Permitimos en el cortafuegos, el acceso a los servicios de impresión ``ipp`` e ``ipp-client``. En el cortafuegos hay varias zonas, para saber la que tenemos activa hacemos ``firewall-cmd --get-default-zone``.

![](img/005.png)

- Vemos que el puerto CUPS (``:631``) está en escucha.

![](img/006.png)

- Accederemos a la sección de ``Administración`` con el usuario/clave de root. Desde ahí accederemos a la sección ``Ver archivo de registro de accesos``.

![](img/007.png)

![](img/011.png)

![](img/012.png)

## **2. Imprimir de forma local**

- Instalamos el paquete ``cups-pdf``.

![](img/010.png)

- Creamos un archivo TXT y lo imprimimos en la impresora local.

![](img/014.png)

![](img/015.png)

- Comprobamos el resultado.

![](img/016.png)

![](img/017.png)

## **3. Imprimir de forma remota**

 **Servidor**

- Habilitamos la impresora como recurso de red compartido.

![](img/018.png)

 **Cliente**

- Agregamos impresora de red.

![](img/019.png)

![](img/020.png)

![](img/021.png)

- Creamos un archivo TXT y lo imprimimos en la impresora remota.

![](img/022.png)

![](img/023.png)

- Comprobamos que se ha realizado la impresión remota.

![](img/026.png)

![](img/025.png)
