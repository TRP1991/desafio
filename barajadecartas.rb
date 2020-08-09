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

    def barajar #Creación método barajar que permite desordenar el arreglo de cartas
        @cartas = @cartas.shuffle
    end

    def sacar #Creación método sacar que permite retirar la primera carta de la baraja 
        @cartas.pop
    end

