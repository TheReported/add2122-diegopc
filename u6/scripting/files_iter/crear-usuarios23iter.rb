#!/usr/bin/env ruby
system("figlet diego_peraza23")
puts "\e[0;36mCreando 10 usuarios <diegor>\e[m"

user='diego'
for var in 1..10 do
	us="#{user}"+"#{var}"
	if (File.directory?("/home/#{us}r"))
		puts "\e[1;31mEl usuario #{us}r ya existe\e[m"
	else
		system ("sudo useradd -m #{us}r -s /bin/bash -p #{us}r")
		puts "\e[0;32mCreando usuario #{us}r\e[m"
	end
end

puts "\e[1;35mComprobamos que se han creado los usuarios correctamente\e[m"
system ("cat /etc/passwd | grep diego --color=auto")
puts "\e[0;33mUsuarios creados correctamente\e[m"
