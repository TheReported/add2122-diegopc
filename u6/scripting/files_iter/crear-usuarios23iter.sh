#!/usr/bin/env bash
figlet diego-peraza23
echo -e "\e[0;36mCreando 10 usuarios <diegob>\e[0m"
user=diego

for i in {1..10};do
	us="$user$i"
	if [ -d /home/${us}b ]; then
		echo -e "\e[1;31mEl usuario ${us}b ya existe\e[0m"
	else
		sudo useradd -m ${us}b -s /bin/bash -p ${us}b
		echo -e "\e[0;32mCreando usuario ${us}b\e[0m"
	fi
done
echo -e "\e[1;35mComprobamos que se han creado los usuarios correctamente\e[0m"
cat /etc/passwd | grep diego --color=auto
echo -e "\e[0;33mUsuarios creados correctamente\e[0m"
