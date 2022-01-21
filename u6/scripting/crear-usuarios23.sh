#!/usr/bin/env bash
echo "Creando 10 usuarios <diegob>"
user=diego

for i in {1..10};do
	us="$user$i"
	sudo useradd -m ${us}b -s /bin/bash -p ${us}b
done
echo "Comprobamos que se han creado los usuarios correctamente"
cat /etc/passwd | grep diego
echo "Usuarios creados correctamente"
