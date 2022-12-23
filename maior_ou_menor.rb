puts "Bem vindo ao jogo de advinhacao"
puts "Qual e o seu nome?"
nome = gets
puts "\n\n\n\n"
puts "Comeceramos o jogo para voce, " + nome

puts "Escolhendo um numero secreto entre 0 e 200 ..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso numero secreto?"
puts "\n\n\n"
puts "Tentativa 1"
puts "Entre com o numero"
chute = gets
puts "Sera que acertou? Voce chutou " + chute
puts chute.to_i == numero_secreto

if numero_secreto == chute.to_i
    puts "Voce acertou!"
else
    puts "Voce errou!"
end
