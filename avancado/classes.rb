

class Conta

    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}"
    end
end


c = Conta.new('Antonio')

c.deposita(100.00)

puts "Olá #{c.nome}! O seu saldo é de #{c.saldo} reais."