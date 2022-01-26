# **Scripting: Estructura secuencial**

***Nombre:*** Diego Peraza Cabo
<br>
***Curso:*** 2º ASIR

## **Índice** <a id=0></a>

  + [0. Scripts](#00)
  + [1. Práctica en Bash](#1)
    + [1.1 Crear usuarios](#1.1)
    + [1.2 Borrar usuarios](#1.2)
  + [2. Práctica en Ruby](#2)
    + [2.1 Crear usuarios](#2.1)
    + [2.2 Borrar usuarios](#2.2)

![](img/16.png)

![](img/17.jpg)

### **0. Scripts** <a id=00></a>

#### **Bash**
  + [crear-usuarios23.sh](files_new/crear-usuarios23.sh)
  + [borrar-usuarios23.sh](files_new/borrar-usuarios23.sh)

#### **Ruby**

+ [crear-usuarios23.rb](files_new/crear-usuarios23.rb)
+ [borrar-usuarios23.rb](files_new/borrar-usuarios23.rb)

[Volver](#0)

### **1. Práctica en Bash** <a id=1></a>

- Para las dos prácticas que vamos a relizar crearemos un directorio `/home/diego/scripst23` y nos movemos a él.

  ![](img/50.png)

- Además, nos descargamos el paquete ``cowsay`` y el paquete ``whois``.

  ![](img/4.png)

  ![](img/60.png)

#### **1.1 Crear usuarios <diegob>** <a id=1.1></a>

- Creamos y realizamos el script `crear-usuarios23.sh`, para crear un número de 10 usuarios en el sistema con el nombre de `diego1b`, `diego2b`, etc. Para poner la contraseña a los usuarios pondremos lo siguiente: `-p "$(mkpasswd --method=sha-512 'diego1b')`, esto sirve para que encripte la contraseña que vamos a poner, que en este caso es el nombre de usuario.

  ![](img/61.png)

##### **Comprobamos**

  ![](img/52.png)

- Iniciamos sesión con algún usuario creado.

  ![](img/63.png)

#### **1.2 Borrar usuarios <diegob>** <a id=1.1></a>

- Creamos y realizamos el script `borrar-usuarios23.sh`, para borrar los usuarios creados en el punto anterior.

  ![](img/58.png)

- Para este script lo que hice fue más o menos lo mismo que en `crear-usuarios23.sh`, ya que solo modifique el comando `useradd` a `userdel`. Además añadí la siguiente línea al comando para que ocultase la salida de `no crontab for diego2b`= `> /dev/null 2&1`,y también añadí el comando `cowsay ....`.

##### **Comprobamos**

  ![](img/53.png)

[Volver](#0)

### **2. Práctica con Ruby** <a id=2></a>

- Para esta práctica tenemos que estar en el directorio `/home/diego/scripts23`.

- Además tenemos que descarganos el paquete `xcowsay`.

  ![](img/5.png)

#### **2.1 Crear usuarios <diegor>** <a id=2.1></a>

- Creamos y realizamos el script `crear-usuarios23.rb`, para crear un número de 10 usuarios en el sistema con el nombre de `diego1r`, `diego2r`, etc. Para poner la contraseña a los usuarios pondremos lo siguiente: `-p $(mkpasswd --method=sha-512 'diego1r')`, esto sirve para que encripte la contraseña que vamos a poner, que en este caso es el nombre de usuario.

  ![](img/62.png)

- Vemos que Ruby es muy parecido al lenguaje de Bash, por ejemplo para mostrar texto en Bash pondremos el comando `echo`, pero en Ruby se usa el comando `puts`.

- Los comandos se ejecutarán con el método `system ("COMMAND")`.

##### **Comprobamos**

  ![](img/54.png)

- Iniciamos sesión con algún usuario creado.

  ![](img/64.png)

#### **2.2 Borrar usuarios <diegor>** <a id=2.2></a>

- Creamos y realizamos el script `borrar-usuarios23.rb`, para borrar los usuarios creados en el punto anterior.

  ![](img/59.png)

- Para este script lo que hice fue más o menos lo mismo que en `crear-usuarios23.rb`, ya que solo modifique el comando `useradd` a `userdel`. Además añadí la siguiente línea al comando para que ocultase la salida de `no crontab for diego2b`= `> /dev/null 2&1` ,y también añadí el comando `xcowsay ....`.

##### **Comprobamos**

  ![](img/55.png)

[Volver](#0)
