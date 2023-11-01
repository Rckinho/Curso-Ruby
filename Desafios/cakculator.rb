def calculadora
    puts "Bem-vindo à Calculadora Simples em Ruby!\n\n"
  
    print "Por favor, insira o primeiro número: "
    num1 = gets.to_f
  
    print "Por favor, insira o segundo número: "
    num2 = gets.to_f
  
    puts "Escolha a operação:"
    puts "1. Adição (+)"
    puts "2. Subtração (-)"
    puts "3. Multiplicação (*)"
    puts "4. Divisão (/)"
    print "Digite o número da operação desejada: "
    operacao = gets.chomp
  
    case operacao
    when '1'
      resultado = num1 + num2
      operador = '+'
    when '2'
      resultado = num1 - num2
      operador = '-'
    when '3'
      resultado = num1 * num2
      operador = '*'
    when '4'
      if num2 == 0
        puts "Erro! Não é possível dividir por zero."
        return
      else
        resultado = num1 / num2
        operador = '/'
      end
    else
      puts "Operação inválida!"
      return
    end
  
    puts "O resultado da operação #{operador} é: #{resultado}"
  end
  
  calculadora
  