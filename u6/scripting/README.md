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
  + [crear-usuarios23.sh](files/crear-usuarios23.sh)
  + [borrar-usuarios23.sh](files/borrar-usuarios23.sh)

**Ruby**

+ [crear-usuarios23.rb](files/crear-usuarios23.rb)
+ [borrar-usuarios23.rb](files/borrar-usuarios23.rb)

[Volver](#0)

### **1. Práctica en Bash** <a id=1></a>

- Para las dos prácticas que vamos a relizar crearemos un directorio `/home/diego/script23` y nos movemos a él.

  ![](img/3.png)

- Además, nos descargamos el paquete cowsay.

  ![](img/4.png)

#### **1.1 Crear usuarios <diegob>** <a id=1.1></a>

- Creamos y realizamos el script `crear-usuarios23.sh`, para crear un número de 10 usuarios en el sistema con el nombre de `diego1b`, `diego2b`, etc.

  ![](img/14.png)

- Para estre script lo primero que hice fue poner mi nombre como variable `user`, lo segundo crear un bucle que lo que hiciese que la variable `i` contára del 1 al 10 incluyendolos.

- Tercero, cree una variable `us` que sumase las dos variables anteriores `user` y `i`.

- Cuarto, indique un condicional en el que si ya estaban creado los usuarios, pusiera como que ya existen y un `exit 0` para salir del programa, y si no lo estaban pues se creaban automáticamente.

- Quinto, puse el comando `cat /etc/passwd | grep diego`, para comprobar de que se han creado los usuarios correctamente.

- Y por último, puse colores en todos los comandos `echo`, para aplicar el color tenía que poner `echo -e` y además el código de color dentro del contenido.

##### **Comprobamos**

  ![](img/6.png)

#### **1.2 Borrar usuarios <diegob>** <a id=1.1></a>

- Creamos y realizamos el script `borrar-usuarios23.sh`, para borrar los usuarios creados en el punto anterior.

  ![](img/15.png)

- Para este script lo que hice fue más o menos lo mismo que en `crear-usuarios23.sh`, ya que solo modifique el comando `useradd` a `userdel`. Además añadí la siguiente línea al comando para que ocultase la salida de `no crontab for diego2b`= `> /dev/null 2&1`,y también añadí el comando `cowsay ....`.

##### **Comprobamos**

  ![](img/7.png)

[Volver](#0)

### **2. Práctica con Ruby** <a id=2></a>

- Para esta práctica tenemos que estar en el directorio `/home/diego/script23`.

- Además tenemos que descarganos el paquete `xcowsay`.

  ![](img/5.png)

#### **2.1 Crear usuarios <diegor>** <a id=2.1></a>

- Creamos y realizamos el script `crear-usuarios23.rb`, para crear un número de 10 usuarios en el sistema con el nombre de `diego1r`, `diego2r`, etc.

  ![](img/12.png)

- Vemos que Ruby es muy parecido al lenguaje de Bash, por ejemplo para mostrar texto en Bash pondremos el comando `echo`, pero en Ruby se usa el comando `puts`.

- Después para el bucle no hace falta poner las llaves.

- Cuando hagamos el condicional `if` será lo mismo que en Bash, pero para poner que existe un directorio pondremos `File.directory?` en vez de `if [-d ..]`.

- Los comandos se ejecutarán con el método `system ()`.

##### **Comprobamos**

  ![](img/8.png)

#### **2.2 Borrar usuarios <diegor>** <a id=2.2></a>

- Creamos y realizamos el script `borrar-usuarios23.rb`, para borrar los usuarios creados en el punto anterior.

  ![](img/13.png)

- Para este script lo que hice fue más o menos lo mismo que en `crear-usuarios23.rb`, ya que solo modifique el comando `useradd` a `userdel`. Además añadí la siguiente línea al comando para que ocultase la salida de `no crontab for diego2b`= `> /dev/null 2&1` ,y también añadí el comando `xcowsay ....`.

##### **Comprobamos**

  ![](img/9.png)
