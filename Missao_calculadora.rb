result = nil
closing = 'Encerrando...'

loop do
puts result.nil? ? '' : "Resultado: #{result}"
puts 'Selecione uma das seguintes opções:'
puts '1 - Somar'
puts '2 - Subtrair'
puts '3 - Dividir'
puts '4 - Multiplicar'
puts '5 - Sair da calculadora.'
print 'Opção: '

option = gets.chomp.to_i

if option == 5
    puts " #{closing}"
    break
elsif ![1, 2, 3, 4].include?(option)
    puts 'Opção inválida. Por favor, escolha uma opção válida.'
    next
end

print 'Digite o primeiro número: '
number1 = gets.chomp.to_i
print 'Digite o segundo número: '
number2 = gets.chomp.to_i

case option
when 1
    result = number1 + number2
when 2
    result = number1 - number2
when 3
    if number2.zero?
    puts 'Erro: Divisão por zero.'
    next
    end
    result = number1 / number2
when 4
    result = number1 * number2
end

puts "O resultado da operação entre #{number1} e #{number2} é #{result}"
end
