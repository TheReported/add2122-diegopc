# **Servicio de comunicaciones con Telegram (bot-service)**

***Nombre:*** Diego Peraza Cabo
<br>
***Curso:*** 2º ASIR

## **Índice** <a id="0"></a>

+ [1. Crear un bot de Telegram con Ruby](#1)
  + [1.1 Crar bot con BotFather](#1.1)
  + [1.2 Crear un programa de Ruby](#1.2)
  + [1.3 Entrega](#1.3)
+ [2. Sytemd](#2)
  + [2.1 Crear un servicio](#2.1)
  + [2.2 Iniciar y activar eñ servicio](#2.2)
  + [2.3 Parar el proceso](#2.3)
  + [2.4 Entrega](#2.4)
+ [3. Programar tareas](#3)
  + [3.1 Controlador](#3.1)
  + [3.2 Tareas programadas](#3.2)
  + [3.3 Entrega](#3.3)

### **1. Crear un bot de Telegram con Ruby** <a id="1"></a>

### **1.1 Crar bot con BotFather** <a id="1.1"></a>

- Iniciamos telegram y buscamos el usuario `@BotFather`, también empezaremos la conversación y con la creación de nuestro bot con la orden `/newbot`.

  ![](img/1.png)

  ![](img/2.png)

  ![](img/3.png)

  ![](img/4.png)

- Ponemos como nombre del Bot `@Bot_diego23` y del nombre de usuario `diego23_bot`. Apuntamos los siguientes datos para usarlos más adelante:

  - Bot URL
  - TOKEN (HTTP API)

    ![](img/5.png)

- Ahora vamos a crear un grupo de Telegram y añadimos al bot creado anteriormente. Para crear el grupo tendremos que dirigirnos a la parte inferior izquierda y darle click a `Lapiz -> New Group`.

  ![](img/6.png)

  ![](img/7.png)

- Buscamos nuestro bot y lo añadimos al grupo.

  ![](img/10.png)

- De nombre del grupo podremos ponerlo como queramos, pero en mi caso puse `bot-service`.

  ![](img/11.png)

- Una vez hecho todo lo anterior le damos a la flecha de abajo izquierda y ya tendriamos creado el grupo con neustro bot.

  ![](img/12.png)

### **1.2 Crear un programa de Ruby** <a id="1.2"></a>

- Instalamos la gema de ruby que permite comunicarse con Telegram.

  ![](img/13.png)

- Vemos que nos ha dado un error en la instalación de la gema anterior, para solucionarlo nos instalamos la siguiente gema.

  ![](img/14.png)

- Una vez solucionado el problema, volvemos a instalarnos la gema `telegram-bot-ruby`.

  ![](img/15.png)

- Creamos el directorio `telegram` en nuestra carpeta `/home/diego`, además accedemos dentro de la carpeta crear y añadimos el fichero `hiden.token` para que tenga nuestro TOKEN del Bot dentro.

  ![](img/16.png)

  ![](img/17.png)

- Una vez realizado el paso anterior, ejecutamos el programa de ejemplo de la actividad. Solo tendremos que cambiar el valor de `bot_username` a nuestro usuario.

  ![](img/18.png)

  ![](img/21.png)

- Iniciamos `bot-demo.rb`.

  ![](img/19.png)

- Comprobamos su funcionamiento en el Telegram.

  ![](img/20.png)

### **1.3 Entrega** <a id="1.3"></a>

  + [Script Bot23d](files/bot23.rb)
  + [Funcionamiento del Bot23d](https://www.youtube.com/watch?v=FRh22RLe1ew)

### **2. Sytemd** <a id="2"></a>

- Vamos a crear un servicio para nuestro Bot, de modo que se inicie siempre al arrancar el equipo y que podemos gestionarlo como el resto de servicios (usando el comando ``systemctl``).

### **2.1 Crear un servicio** <a id="2.1"></a>



### **2.2 Iniciar y activar eñ servicio** <a id="2.2"></a>

### **2.3 Parar el proceso** <a id="2.3"></a>

### **2.4 Entrega** <a id="2.4"></a>

### **3. Programar tareas** <a id="3"></a>

### **3.1 Controlador** <a id="3.1"></a>

### **3.2 Tareas programadas** <a id="3.2"></a>

### **3.3 Entrega** <a id="3.3"></a>
