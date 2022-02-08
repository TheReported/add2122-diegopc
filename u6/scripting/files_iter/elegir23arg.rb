#!/usr/bin/env ruby

puts "

- Elige la opción 'c' para crear 10 usuarios <diegor>
- Elige la opción 'b' para borrar 10 usuarios <diegor>
- Elige la opción 'e' para consultar el estado de los usuarios
"
option = ARGV[0]

if   (option == "c")
	puts "Ejecutando el script crear-usuarios23.rb"
	system ("cd /home/diego/scripts23/iterativa23/ && ruby crear-usuarios23iter.rb")
	elsif (option == "b")
		puts "Ejecutando el script borrar-usuarios23.rb"
		system ("cd /home/diego/scripts23/iterativa23/ && ruby borrar-usuarios23iter.rb")

	elsif (option== "e")
		puts "Consultando el estado de los usuarios"
		system ("cat /etc/passwd | grep diego --color=auto")
	else
		puts "ERROR!! Debes elegir alguna de las opciones válidas. "
		system ("sl")
		exit 1
	end
