#!/usr/bin/env ruby
puts "\e[0;36mEliminando 10 usuarios <diegor>\e[m"

system ("sudo userdel -r diego1r > /dev/null 2>&1 ")
system ("sudo userdel -r diego2r > /dev/null 2>&1 ")
system ("sudo userdel -r diego3r > /dev/null 2>&1 ")
system ("sudo userdel -r diego4r > /dev/null 2>&1 ")
system ("sudo userdel -r diego5r > /dev/null 2>&1 ")
system ("sudo userdel -r diego6r > /dev/null 2>&1 ")
system ("sudo userdel -r diego7r > /dev/null 2>&1 ")
system ("sudo userdel -r diego8r > /dev/null 2>&1 ")
system ("sudo userdel -r diego9r > /dev/null 2>&1 ")
system ("sudo userdel -r diego10r > /dev/null 2>&1 ")

puts "\e[1;35mComprobamos que se han eliminado los usuarios correctamente\e[m"
system ("cat /etc/passwd | grep diego --color=auto")
system ("xcowsay ¡Usuarios borrados!")
