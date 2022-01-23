#!/bin/bash
echo -e "\e[0;36mCreando 10 usuarios <diegob>\e[0m"
sudo useradd -m diego1b -s /bin/bash -p diego1b
sudo useradd -m diego2b -s /bin/bash -p diego2b
sudo useradd -m diego3b -s /bin/bash -p diego3b
sudo useradd -m diego4b -s /bin/bash -p diego4b
sudo useradd -m diego5b -s /bin/bash -p diego5b
sudo useradd -m diego6b -s /bin/bash -p diego6b
sudo useradd -m diego7b -s /bin/bash -p diego7b
sudo useradd -m diego8b -s /bin/bash -p diego8b
sudo useradd -m diego9b -s /bin/bash -p diego9b
sudo useradd -m diego10b -s /bin/bash -p diego10b
echo -e "\e[1;35mComprobamos que se han creado los usuarios correctamente\e[0m"
id diego1b
id diego2b
id diego3b
id diego4b
id diego5b
id diego6b
id diego7b
id diego8b
id diego9b
id diego10b
echo -e "\e[0;33mUsuarios creados correctamente\e[0m"
