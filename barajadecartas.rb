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

    def repartir_mano #Creación método repartir_mano que permite devolver un arreglo con las primeras 5 cartas de la baraja
        mano = []
        5.times { |i| mano.push(@cartas.reverse[i])}
        5.times {@cartas.pop}
    end
end



