class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

cartas =[]
pintas = ['C','D','E','T']
5.times{cartas.push(Carta.new(rand(1..13), pintas.sample()))}
pp cartas