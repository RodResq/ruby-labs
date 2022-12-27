def da_boas_vindas
    puts "Bem vindo ao jogo de advinhacao"
    puts "Qual e o seu nome?"
    nome = gets
    puts "\n\n\n\n"
    puts "Comeceramos o jogo para voce, " + nome
end

def sorteia_numero_secreto
    puts "Escolhendo um numero secreto entre 0 e 200 ..."
    sorteado = 175
    puts "Escolhido... que tal adivinhar hoje nosso numero secreto?"
    sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
    puts "\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o numero"
    chute = gets
    puts "Sera que acertou? Voce chutou " + chute
    chute.to_i
end

def varifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute
    if acertou
        puts "Voce acertou!"
        return true
    else
        maior = numero_secreto > chute.to_i
        if maior 
            puts("O numero secreto é maior!")
        else
            puts("O Numero secreto é menor!")
        end
    end
    false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas do
    chute = pede_um_numero tentativa, limite_de_tentativas 
    break if varifica_se_acertou numero_secreto, chute 
end
