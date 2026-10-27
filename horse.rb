# pseudo code horse race
# Criar saldo para aposta
# Criar a lista de cavalos
# Mostrar lista de opções de cavalos
# Pedir o cavalo aposta
# Salvar o cavalo escolhido
# Rodar o cavalo vencedor
# Comparar o cavalo vencedor com o cavalo escolhido
# Avisar se o cavalo escolhido é o vencedor
# Avisar ganho/perda e informar novo saldo
# Validar se usuário tem saldo, saldo zerado encerra apostas
# Perguntar se quer fazer nova aposta
# Salvar resposta
# Reiniciar o jogo caso resposta seja positiva

def horse_race
  saldo = 100
  horses = ["alipio", "romarinho", "canabraba"]
  resposta = "y"

  while resposta == "y" && saldo > 0
    puts "Seu saldo inicial e $ #{saldo}"
    puts "Escolha seu cavalo:"

    horses.each do |horse|
      puts horse
    end

    puts "Digite o nome do cavalo:"
    escolha = gets.chomp

    until horses.include?(escolha)
      puts "nome invalido, digite novamente"
      escolha = gets.chomp
    end

    vencedor = horses.sample
    puts "cavalo vencedor: #{vencedor}"

    if escolha == vencedor
      saldo += 50
      puts "voce ganhou!"
    else
      saldo -= 10
      puts "voce perdeu 10!"
    end

    puts "novo saldo: $ #{saldo}"
    if saldo > 0
      puts "quer jogar novamente? (y/n)"
      resposta = gets.chomp
    end

  end

  puts "fim do jogo, saldo final $ #{saldo}"
end
horse_race
