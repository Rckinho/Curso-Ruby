system 'clear'

result = ''

puts 'Bem-vindo à Calculadora Simples em Ruby'

puts "\nPor favor, insira o primeiro número: "
n1 = gets.to_i

puts 'Por favor, insira o segundo número: '
n2 = gets.to_i

loop do
    puts "\nEscolha a operação: "
    puts '1. Adição (+)'
    puts '2. Subtraçao (-)'
    puts '3. Multiplicação (*)'
    puts '4. Divisão (/)'

    puts "\nDigite o número da operação desejada: "

    option = gets.to_i

    if option == 1
        result = n1 + n2
        puts "O resultado da adição é: #{result}"
    elsif option == 2
        result = n1 - n2
        puts "O resultado da subtração é: #{result}"
    elsif option == 3
        result = n1 * n2
        puts "O resultado da multiplicação é: #{result}"
    elsif option == 4
        result = n1 / n2
        puts "O resultado da divisão é: #{result}"
    else
        result = 'Opção inválida!'
    end

    break
end