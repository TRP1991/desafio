class CuentaBancaria #Creación clase Cuenta Bancaria
    attr_accessor :banco, :numero_cuenta, :saldo
    def initialize(banco, numero_cuenta, saldo = 0)
        @banco = banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto, transferencia) #Creación de método transferir
        @saldo = @saldo - monto
        transferencia.saldo = transferencia.saldo + monto
    end
end

class Usuario #Creación clase Usuario
    attr_accessor :nombre
    def initialize(nombre, cuenta_bancaria)
        @nombre = nombre
        @cuenta_bancaria = cuenta_bancaria
    end

    def saldo_total #Creación método saldo_total
        total = 0
        @cuenta_bancaria.count.times do |i|
            total += @cuenta_bancaria[i].saldo
        end
        total
    end
end


cuenta1 = CuentaBancaria.new("Banco de Chile", "018088356", 5000)
cuenta2 = CuentaBancaria.new("Banco Santander", "015328860", 5000)
usuario = Usuario.new("Tamara Rubilar Pinilla", [cuenta1, cuenta2])

cuenta1.transferir(5000, cuenta2)

puts cuenta1.inspect
puts cuenta2.inspect
puts usuario.saldo_total
