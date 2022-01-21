#!/usr/bin/env ruby
puts "Creando 10 usuarios <diegob>"

user='diego'

for var in 1..10 do
	us="#{user}"+"#{var}"
	system ("sudo useradd -m #{us}r -s /bin/bash -p #{us}r")

end

puts "Comprobamos que se han creado los usuarios correctamente"
system ("cat /etc/passwd | grep diego")
puts "Usuarios creados correctamente"
