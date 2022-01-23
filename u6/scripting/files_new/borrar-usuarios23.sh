#!/bin/bash
echo -e "\e[0;36mEliminando 10 usuarios <diegob>\e[0m"
sudo userdel -r diego1b > /dev/null 2>&1
sudo userdel -r diego2b > /dev/null 2>&1
sudo userdel -r diego3b > /dev/null 2>&1
sudo userdel -r diego4b > /dev/null 2>&1
sudo userdel -r diego5b > /dev/null 2>&1
sudo userdel -r diego6b > /dev/null 2>&1
sudo userdel -r diego7b > /dev/null 2>&1
sudo userdel -r diego8b > /dev/null 2>&1
sudo userdel -r diego9b > /dev/null 2>&1
sudo userdel -r diego10b > /dev/null 2>&1
echo -e "\e[1;35mComprobamos que se han eliminado los usuarios correctamente\e[0m"
cat /etc/passwd | grep diego --color=auto
cowsay "¡Usuarios borrados!"
