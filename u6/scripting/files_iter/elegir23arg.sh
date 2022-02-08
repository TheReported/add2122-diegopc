#!/usr/bin/env bash

echo "

- Elige la opción 'c' para crear 10 usuarios <diegob>
- Elige la opción 'b' para borrar 10 usuarios <diegob>
- Elige la opción 'e' para consultar el estado actual de los usuarios <diegob>
"

if  [ $1 = "c" ] ;then
	echo "Ejecutando el script crear-usuarios23iter.sh"
	cd /home/diego/scripts23/iterativa23/ && bash crear-usuarios23iter.sh
	elif [ $1 = 'b' ]; then
		echo "Ejecutando el script borrar-usuarios23iter.sh"
		cd /home/diego/scripts23/iterativa23/ && bash borrar-usuarios23iter.sh
	elif [ $1 = "e" ]; then
		cat /etc/passwd | grep diego --color=auto
	else
		echo "ERROR!! Debes elegir alguna de las opciones válidas. "
		sl
		exit 1
	fi
