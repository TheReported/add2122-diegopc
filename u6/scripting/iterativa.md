# **Scripting: Estructura iterativa**

***Nombre:*** Diego Peraza Cabo
<br>
***Curso:*** 2º ASIR

![](img/16.png)

![](img/17.jpg)

## **Índice** <a id="0"></a>

+ [0. Scripts](#00)
+ [1. Práctica en Bash](#1)
  + [1.1 Crear usuarios](#1.1)
  + [1.2 Borrar usuarios](#1.2)
  + [1.3 Elegir argumento](#1.3)
+ [2. Práctica en Ruby](#2)
  + [2.1 Crear usuarios](#2.1)
  + [2.2 Borrar usuarios](#2.2)
  + [2.3 Elegir argumento](#2.3)

### **0. Scripts** <a id="00"></a>
- **Bash**
    + [crear-usuarios23iter.sh](files_iter/crear-usuarios23iter.sh)
    + [borrar-usuarios23iter.sh](files_iter/borrar-usuarios23iter.sh)
    + [elegir23arg.sh](files_iter/elegir23arg.sh)

- **Ruby**
  + [crear-usuarios23iter.rb](files_iter/crear-usuarios23iter.rb)
  + [borrar-usuarios23iter.rb](files_iter/borrar-usuarios23iter.rb)
  + [elegir23arg.rb](files_iter/elegir23arg.rb)

### **1. Práctica en Bash** <a id="1"></a>

- Creamos el directorio `/home/diego/scripts23`, nos movemos dentro y creamos otra carpeta con el nombre de `iterativa23`, que es donde vamos a realizar la práctica.

  ![](img-iter/1.png)

- Además instalamos el paquete `figlet`.

  ![](img-iter/2.png)

#### **1.1 Crear usuarios** <a id="1.1"></a>

- Creamos el script `crear-usuarios23iter.sh`, que sería como la segunda versión del script secuencial `crear-usuarios23.sh`. Este script sirve para crear un número de 10 usuarios en el sistema con el nombre de `diego1b`, `diego2b`, etc.

  ![](img-iter/3.png)

- Para este script lo primero que hice fue poner mi nombre como variable `user`, lo segundo crear un bucle que lo que hiciese, es que la variable `i` contára del 1 al 10 incluyendolos.

- Tercero, cree una variable `us` que sumase las dos variables anteriores `user` y `i`.

- Cuarto, indique un condicional en el que si ya estaban creado los usuarios, pusiera como que ya existen y un `exit 0` para salir del programa, y si no lo estaban pues se creaban automáticamente.

- Quinto, puse el comando `cat /etc/passwd | grep diego`, para comprobar de que se han creado los usuarios correctamente.

- Y por último, puse colores en todos los comandos `echo`, para aplicar el color tenía que poner `echo -e` y además el código de color dentro del contenido.

- Comprobamos.

  ![](img-iter/7.png)

#### **1.2 Borrar usuarios** <a id="1.2"></a>

- Creamos y realizamos el script `borrar-usuarios23iter.sh`, para borrar los usuarios creados en el punto anterior.

  ![](img-iter/4.png)

- Para este script lo que hice fue más o menos lo mismo que en `crear-usuarios23.sh`, ya que solo modifique el comando `useradd` a `userdel`.

- Además añadí la siguiente línea al comando para que ocultase la salida de `no crontab for diego2b`= `> /dev/null 2>&1`,y también añadí el comando `cowsay ....`.

- El **'>>'** sirve para redireccionar la salida,**'/dev/null'** es un archivo pseudodispositivo que acepta y descarta todas las entradas, o sea no produce salidas. Y **'2>&1'** es un descriptor de archivo,ya que simplemente dice de redirigir el errór estándar a la salida estándar.

- Comprobamos.

  ![](img-iter/6.png)

#### **1.3 Elegir argumento** <a id="1.3"></a>

- Creamos el script `elegir23arg.sh`, que será la segunda versión del script condicional, pero en este caso se modificará para invocar a los scripts nuevos que acabamos de modificar para que sean interactivos.

- Además añadimos una nueva opción "e" para consultar el estado actual de los usuarios.

  ![](img-iter/5.png)

- Comprobamos.

  - Consultamos el estado de los usuarios.

    ![](img-iter/8.png)

  - Creamos los 10 usuarios <diegob>.

    ![](img-iter/9.png)

  - Consultamos el estado de los usuarios.

    ![](img-iter/10.png)

  - Borramos los 10 usuarios <diegob>.

    ![](img-iter/11.png)

  - Consultamos el estado de los usuarios.

    ![](img-iter/12.png)

  - Argumento no válido.

    ![](img-cond/18.png)

[Volver](#0)

### **2. Práctica en Ruby** <a id="2"></a>

- Para esta práctica tenemos que estar en el directorio `/home/diego/scripts23/iterativa23`.

#### **2.1 Crear usuarios** <a id="2.1"></a>

- Creamos y realizamos el script `crear-usuarios23iter.rb`, para crear un número de 10 usuarios en el sistema con el nombre de `diego1r`, `diego2r`, etc.

  ![](img-iter/13.png)

- Vemos que Ruby es muy parecido al lenguaje de Bash, por ejemplo para mostrar texto en Bash pondremos el comando `echo`, pero en Ruby se usa el comando `puts`.

- Después para el bucle no hace falta poner las llaves.

- Cuando hagamos el condicional `if` será lo mismo que en Bash, pero para poner que existe un directorio pondremos `File.directory?` en vez de `if [-d ..]`.

- Los comandos se ejecutarán con el método `system ("COMANDO")`.

- Comprobamos.

  ![](img-iter/16.png)

#### **2.2 Borrar usuarios** <a id="2.2"></a>

- Creamos y realizamos el script `borrar-usuarios23iter.rb`, para borrar los usuarios creados en el punto anterior.

  ![](img-iter/14.png)

- Para este script lo que hice fue más o menos lo mismo que en `crear-usuarios23.rb`, ya que solo modifique el comando `useradd` a `userdel`. Además añadí la siguiente línea al comando para que ocultase la salida de `no crontab for diego2b`= `> /dev/null 2&1` ,y también añadí el comando `xcowsay ....`.

- Comprobamos.

  ![](img-iter/17.png)

#### **2.3 Elegir argumento** <a id="2.3"></a>

- Creamos el script `elegir23arg.sh`, que será la segunda versión del script condicional, pero en este caso se modificará para invocar a los scripts nuevos que acabamos de modificar para que sean interactivos.

- Además añadimos una nueva opción "e" para consultar el estado actual de los usuarios.


  ![](img-iter/15.png)

- Comprobamos.

  - Consultamos el estado de los usuarios.

    ![](img-iter/18.png)

  - Creamos los 10 usuarios <diegob>.

    ![](img-iter/19.png)

  - Consultamos el estado de los usuarios.

    ![](img-iter/20.png)

  - Borramos los 10 usuarios <diegob>.

    ![](img-iter/21.png)

  - Consultamos el estado de los usuarios.

    ![](img-iter/22.png)

  - Argumento no válido.

    ![](img-cond/18.png)

[Volver](#0)
