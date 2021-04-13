puts "1984" + "toto"
puts 1984.to_s + "toto"
# puts 1984 + "toto" Does not work: String can't be coerced into Integer (TypeError)

(1..10).to_a.each do |i|
    puts i
end