#!/usr/bin/env ruby
system ("figlet diego_peraza23")
puts "\e[0;36mEliminando 10 usuarios <diegor>\e[m"

user='diego'
for var in 1..10 do
	us="#{user}"+"#{var}"
	if (File.directory?("/home/#{us}r"))
		system ("sudo userdel -r #{us}r > /dev/null 2>&1 ")
		puts "\e[0;32mUsuario #{us}r eliminado\e[m"
	else
		puts "\e[1;31mEl usuario #{us}r no existe\e[m"
	end
end

puts "\e[1;35mComprobamos que se han eliminado los usuarios correctamente\e[m"
system ("cat /etc/passwd | grep diego --color=auto")
system ("xcowsay ¡Usuarios borrados!")
