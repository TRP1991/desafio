class CuentaBancaria #Creación clase Cuenta Bancaria
    attr_accessor :banco, :numero_cuenta, :saldo
    def initialize(banco, numero_cuenta, saldo = 0)
        @banco = banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end
