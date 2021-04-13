require('date')

def days_until_christmas(some_date=Date.today)
    next_christmas = Date.new(some_date.year, 12, 25)

    # puts next_christmas.class.methods Display all available methods on a class

    next_christmas = next_christmas.next_year if next_christmas < some_date

    next_christmas_day = (next_christmas - some_date).to_i

    # This is ugly
    # return next_christmas_day + 365 if next_christmas_day.negative?
end

puts days_until_christmas == 256

toto = Date.new(2021, 04, 13)
puts days_until_christmas(toto) == 256
puts days_until_christmas(Date.new(2021, 04, 12)) == 257
puts days_until_christmas(Date.new(2021, 12, 26)) == 364
puts days_until_christmas(Date.new(2023, 12, 26)) == 365
puts days_until_christmas.class == Integer