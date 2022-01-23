#!/bin/ruby
puts "\e[0;36mCreando 10 usuarios <diegor>\e[m"
system ("sudo useradd -m diego1r -s /bin/bash -p diego1r")
system ("sudo useradd -m diego2r -s /bin/bash -p diego2r")
system ("sudo useradd -m diego3r -s /bin/bash -p diego3r")
system ("sudo useradd -m diego4r -s /bin/bash -p diego4r")
system ("sudo useradd -m diego5r -s /bin/bash -p diego5r")
system ("sudo useradd -m diego6r -s /bin/bash -p diego6r")
system ("sudo useradd -m diego7r -s /bin/bash -p diego7r")
system ("sudo useradd -m diego8r -s /bin/bash -p diego8r")
system ("sudo useradd -m diego9r -s /bin/bash -p diego9r")
system ("sudo useradd -m diego10r -s /bin/bash -p diego10r")
puts "\e[1;35mComprobamos que se han creado los usuarios correctamente\e[m"
system ("id diego1r")
system ("id diego2r")
system ("id diego3r")
system ("id diego4r")
system ("id diego5r")
system ("id diego6r")
system ("id diego7r")
system ("id diego8r")
system ("id diego9r")
system ("id diego10r")
puts "\e[0;33mUsuarios creados correctamente\e[m"
