#!/usr/bin/env ruby

require 'date'
require 'colorize'

comando = `systemctl status bot23 | grep Active`.split
d = DateTime.now

if comando[1] == "active"
   puts "El servicio ya está iniciado".colorize(:red)
   system("echo [#{d}] No hace nada! >> /etc/bot23/log")
   exit 1
else
   puts "Iniciando el servicio".colorize(:green)
   `systemctl start bot23`
   puts "Comprobamos que se ha inciado el servicio".colorize(:light_blue)
   system("systemctl status bot23.service")
   system("echo [#{d}] Iniciando el servicio... >> /etc/bot23/log")
end
