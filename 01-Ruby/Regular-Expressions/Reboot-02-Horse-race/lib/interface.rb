horses = ["Jolly Jumper", "Horse 2", "Horse 3"]
cagnotte = 100

while cagnotte.positive?
  puts "Which horse do you chose between: #{horses.join(', ')}"
  bet = gets.chomp

  winning_horse = horses.sample
  p "The horse that wins is: #{winning_horse}"

  if winning_horse == bet
    cagnotte += 50
    puts "You won 50 euros"
  else
    cagnotte -= 10
    puts "You lost 10 euros"
  end

  puts "Your cagnotte is now #{cagnotte}"

  puts "You lost all your money" if cagnotte.zero?
end

