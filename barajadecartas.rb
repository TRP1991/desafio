require_relative 'Carta'

class Baraja #Creación clase Baraja
    attr_accessor :cartas
    def initialize 
        pintas = ['C', 'C', 'E', 'T']
        @cartas = []
        pintas.each do |p|
            13.times do |i|
                @cartas.push(Carta.new(i + 1, p))
            end
        end
    end
    