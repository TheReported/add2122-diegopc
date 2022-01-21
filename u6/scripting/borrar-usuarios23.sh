#!/usr/bin/env bash
echo "Eliminando 10 usuarios <diegob>"
user=diego

for i in {1..10};do
	us="$user$i"
	sudo userdel -r ${us}b
done
echo "Comprobamos que se han eliminado los usuarios correctamente"
cat /etc/passwd | grep diego
echo "Usuarios eliminados correctamente"
