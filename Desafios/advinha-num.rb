def adivinhe_o_numero
    puts "Bem-vindo ao Jogo de Adivinhação em Ruby!"
    puts "Eu escolhi um número entre 1 e 100. Tente adivinhá-lo."

    # Usamos rand para determinar que a maquina escolha um número aleatorio dentro das diretrizes escolhidas
    numero_secreto = rand(1..100)
    tentativas = 0
    adivinhou = false

    print numero_secreto

    while !adivinhou
        print "Tentativa #{tentativas + 1}: "
        tentativa = gets.to_i
        tentativas += 1

        if tentativa == numero_secreto
            puts "Parabéns! Você adivinhou o número corretamente em #{tentativas}"
            adivinhou = true
        elsif tentativa < numero_secreto
            puts "O número é maior que #{tentativa}"
        else
            puts "O número é menor que #{tentativa}"
        end
    end
end

    adivinhe_o_numero