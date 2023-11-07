# Lista de palavras para o jogo da forca
palavras = ["banana", "laranja", "morango", "uva", "abacaxi", "melancia", "manga"]

# Escolha aleatória de uma palavra
palavra_secreta = palavras.sample
tentativas_maximas = 6
tentativas = 0
letras_corretas = []
letras_incorretas = []

puts "Bem-vindo ao Jogo da Forca!"

while tentativas < tentativas_maximas
  palavra_misteriosa = ""
  
  palavra_secreta.chars.each do |letra|
    if letras_corretas.include?(letra)
      palavra_misteriosa << letra
    else
      palavra_misteriosa << "_"
    end
  end
  
  puts "Palavra: #{palavra_misteriosa}"
  puts "Tentativas restantes: #{tentativas_maximas - tentativas}"
  puts "Letras incorretas: #{letras_incorretas.join(', ')}"
  
  print "Digite uma letra: "
  chute = gets.chomp.downcase
  
  if chute.length != 1
    puts "Por favor, digite apenas uma letra por vez."
    next
  end
  
  if letras_corretas.include?(chute) || letras_incorretas.include?(chute)
    puts "Você já tentou essa letra antes."
    next
  end
  
  if palavra_secreta.include?(chute)
    letras_corretas << chute
  else
    letras_incorretas << chute
    tentativas += 1
  end
  
  if palavra_misteriosa == palavra_secreta
    puts "Parabéns, você ganhou! A palavra era '#{palavra_secreta}'."
    break
  end
end

if tentativas == tentativas_maximas
  puts "Você perdeu! A palavra secreta era '#{palavra_secreta}'."
end
