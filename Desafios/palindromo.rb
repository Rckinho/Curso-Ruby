def verifica_palindromo(palavra)

    palavra = palavra.downcase.gsub(" ", "")

    if palavra == palavra.reverse
        return true
    else
        return false
    end
end

puts "Bem-vindo ao Verificador de Palíndromos em Ruby!"
print "Por favor, insira uma palavra ou frase: "
entrada = gets.chomp

if verifica_palindromo(entrada)
  puts "A palavra '#{entrada}' é um palíndromo."
else
  puts "A palavra '#{entrada}' não é um palíndromo."
end
