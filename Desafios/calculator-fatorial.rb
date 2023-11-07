def calcular_fatorial(n)
    if n < 0
        return "O fatorial não está definido para números negativos."
    elsif n == 0
        return 1
    else
        fatorial = 1
        for i in 1..n
            fatorial *= i
        end
        return fatorial
    end
end

puts "Bem-vindo à Calculadora de Fatorial em Ruby!"

print "Por favor, insira um número inteiro não negativo: "
numero = gets.to_i

resultado = calcular_fatorial(numero)

if resultado.is_a?(String)
    puts resultado
else
    puts "O fatorial de #{numero} é #{resultado}."
end