
class Veiculos
    attr_accessor :nome, :marca, :modelo

    

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "O #{nome} está pronto para a partida"
    end

    def buzinar 
        puts "Beep! Beep!"
    end

    def tanque_combustivel(valor)
        if valor <= 10
            puts "O seu #{nome} precisa abastecer"
        else 
            puts "Continue a nadar, continue a nadar!!!"
        end
    end
   
end
