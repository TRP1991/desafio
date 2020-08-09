require_relative 'Carta'

class Baraja #Creación clase Baraja

    def initialize
        @cartas = []
        ['C', 'D', 'E', 'T'].each do |pinta|
            (1..13).each do |numero|
                @cartas << Carta.new(numero, pinta)
            end
        end
    end

    def barajar #Creación método barajar que permite desordenar el arreglo de cartas
        @cartas = @cartas.shuffle
    end

    def sacar #Creación método sacar que permite retirar la primera carta de la baraja 
        @cartas.pop
    end

    def repartir_mano  #Creación método repartir_mano que permite devolver un arreglo con las primeras 5 cartas de la baraja
        mano = []
        5.times {mano << pop }
        return mano
    end
end