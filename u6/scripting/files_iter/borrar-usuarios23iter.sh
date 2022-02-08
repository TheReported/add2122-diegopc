#!/usr/bin/env bash
figlet diego-peraza23
echo -e "\e[0;36mEliminando 10 usuarios <diegob>\e[0m"
user=diego
for i in {1..10};do
	us="$user$i"
	if [ -d /home/${us}b ]; then
		sudo userdel -r ${us}b > /dev/null 2>&1
		echo -e "\e[0;32mUsuario ${us}b eliminado\e[0m"
	else
		echo -e "\e[1;31mEl usuario ${us}b no existe\e[0m"
	fi
done
echo -e "\e[1;35mComprobamos que se han eliminado los usuarios correctamente\e[0m"
cat /etc/passwd | grep diego --color=auto
cowsay "¡Usuarios borrados!"
