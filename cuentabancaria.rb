class CuentaBancaria #Creación clase Cuenta Bancaria
    attr_accessor :banco, :numero_cuenta, :saldo
    def initialize(banco, numero_cuenta, saldo = 0)
        @banco = banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_bancaria) #Creación de método transferir
        @saldo -= monto
        cuenta_bancaria.saldo += monto
    end
end

class Usuario #Creación clase Usuario
    attr_accessor :nombre
    def initialize(nombre, cuentas_bancarias)
        @nombre = nombre
        @cuentas_bancarias = cuentas_bancarias
    end

    def saldo #Creación método saldo 
        total = 0
        @cuentas_bancarias.count.times do |i|
            total += @cuentas_bancarias[i].saldo
        end
        total
    end
end

