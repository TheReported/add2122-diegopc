#!/usr/bin/env ruby
puts "Eliminando 10 usuarios <diegob>"

user='diego'

for var in 1..10 do
	us="#{user}"+"#{var}"
	system ("sudo userdel -r #{us}r ")

end

puts "Comprobamos que se han eliminado los usuarios correctamente"
system ("cat /etc/passwd | grep diego")
puts "Usuarios eliminados correctamente"
