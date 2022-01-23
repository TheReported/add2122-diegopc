#!/usr/bin/env ruby
puts "\e[0;36mCreando 10 usuarios <diegor>\e[m"

user='diego'

for var in 1..10 do
	us="#{user}"+"#{var}"
	if (File.directory?("/home/#{us}r"))
		puts "\e[1;31mLos usuarios ya existen\e[m"
		exit 0
	else
		system ("sudo useradd -m #{us}r -s /bin/bash -p #{us}r")
		puts "\e[0;32mCreando usuario #{us}r\e[m"
	end
end

puts "\e[1;35mComprobamos que se han creado los usuarios correctamente\e[m"
system ("cat /etc/passwd | grep diego --color=auto")
puts "\e[0;33mUsuarios creados correctamente\e[m"
