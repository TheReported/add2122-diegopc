#!/usr/bin/env ruby

require 'telegram/bot'
require 'open3'
require 'word_count'
require 'terrapin'
require 'cocaine'

# token:
# 1. Write your TOKEN value into "token" variable or
# 2. Create a local file "hiden.token" with your TOKEN value inside
token = `cat hide.token`.strip
bot_username = '@diego23_bot'
puts "[INFO] Running bot #{$0}..."

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
   comando = ""
   texto = ""
   options = message.text.split(" ")
   puts " => #{message.text}"
   if message.text == "/help"
      bot.api.send_message(chat_id: message.chat.id, text: ''' Comandos:
      /ip = Muestra la IP del sistema.
      /version = Muestra el autor y la fecha de creación del bot.
      /meet = Muestra un saludo.
      /shell COMANDO = Ejecuta cualquier comando del sistema.
      ''')
   elsif message.text == "/version"
      bot.api.send_message(chat_id: message.chat.id, text: ''' Version:
      Autor: Diego Peraza Cabo
      Fecha de creación: 10/02/22
    ''')
   elsif options[0] == "/shell"
      for e in options do
        comando += ("#{e} ")
      end
      comando = comando.sub('/shell ', "")
      a = system("#{comando}")
      stdout_str, stdeerr_str, status = Open3.capture3("#{comando}")
      bot.api.send_message(chat_id: message.chat.id, text:"Salida del comando:\n\n #{stdout_str}")

   elsif message.text == "/ip"
      ip = `ip a | grep inet | grep eth0`.split
      bot.api.send_message(chat_id: message.chat.id, text:"La ip del sistema es #{ip[1]}")
   elsif options[0] == "/meet"
      for e in options do
        texto += ("#{e} ")
      end
      texto = texto.sub('/meet', "")
      if texto.word_count < 2
        bot.api.send_message(chat_id: message.chat.id, text: "ERROR!! Introduzca más datos")
      else
        bot.api.send_message(chat_id: message.chat.id, text:"Un placer conocerte #{texto}")
      end
    end
  end
end
