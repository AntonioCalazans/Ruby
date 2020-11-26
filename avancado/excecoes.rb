
#Tratamento de exceções

begin 
    #Tentar alguma coisa
    file = File.open('./ola.txt')
    if file 
        puts file.read
    end

rescue Exception => e
    #Tratamento de exceções
    puts e.message
    puts e.backtrace
end

# def soma(n1,n2)
#     n1 + n2
# rescue Exception => e
#     puts e.message
# end

# res = soma(20,10)
# puts "A soma é de #{res}."