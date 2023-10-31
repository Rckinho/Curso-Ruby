result = ''

loop do
    puts result
    puts 'Bem-vindo a calculadora em ruby!'
    puts 'Digite a opção desejada'
    puts '1- Somar'
    puts '2- Subtrair'
    puts '3- Multiplicar'
    puts '4- Dividir'
    puts '0- Sair'

    option = gets.chomp.to_i

    if option == 1
        print "Digite um número: "
        n1 = gets.chomp.to_i

        print "Digite o segundo número: "
        n2 = gets.chomp.to_i

        s = n1 + n2

        result = "O resulta da adição entre #{n1} e #{n2} é igual a #{s}"

    elsif option == 2
        print "Digite um número: "
        n1 = gets.chomp.to_i

        print "Digite o segundo número: "
        n2 = gets.chomp.to_i

        s = n1 - n2

        result = "O resulta da subtração entre #{n1} e #{n2} é igual a #{s}"
    
    elsif option == 3
        print "Digite um número: "
        n1 = gets.chomp.to_i
    
        print "Digite o segundo número: "
        n2 = gets.chomp.to_i
    
        s = n1 * n2
    
        result = "O resulta da multiplicação entre #{n1} e #{n2} é igual a #{s}"

    elsif option == 4
        print "Digite um número: "
        n1 = gets.chomp.to_i

        print "Digite o segundo número: "
        n2 = gets.chomp.to_i

        s = n1 / n2

        result = "O resulta da divisão entre #{n1} e #{n2} é igual a #{s}"
        
    elsif option == 0
        break if option == 0

    else
        result = 'Opção inválida'

    end

    # Comando que limpa o console
    system "clear"

end