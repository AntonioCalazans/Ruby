load ('veiculos.rb')

class Carro < Veiculos
    def dirigir 
       puts " O seu #{nome} está pronto para ser dirigido" 
    end
end

civic = Carro.new("Civic", "Honda", "Tiozão")

civic.dirigir
civic.ligar
civic.buzinar
civic.tanque_combustivel(1)

idea = Carro.new("Idea", "Fiat", "Essence")

idea.ligar
idea.tanque_combustivel(30)
idea.dirigir
idea.buzinar