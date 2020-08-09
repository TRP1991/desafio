require_relative 'Carta'
require_relative 'Barajas'

baraja = Baraja.new #Instancia

baraja.cartas
puts " "

barajas.barajar
puts " "

baraja.sacar
pp baraja.cartas
puts " "

pp baraja.repartir_mano
puts " "
pp baraja.cartas
