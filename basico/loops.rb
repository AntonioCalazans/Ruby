
#Trabalhando com loops

# 5.times do |i|
#     puts 'Validate information ' + i.to_s
# end

# init = 0
# while init < 10 do
#     if init >= 2 
#         puts "Nova validação numeros " + init.to_s
#     else
#     puts "Nova validação numero " + init.to_s
#     end
#     init+= 1
    
# end

# for item in (1...10)
#     puts "Nova validação numero " + item.to_s
# end

vingadores = ["Ironman", "Thor", "Captain American", "Spiderman", "Thor"]

vingadores.each do |v|
    puts v
end