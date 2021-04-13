def tomorrow
    tomorrow_date = Date.today + 1
    return tomorrow_date.strftime("%B %d")
end

def other_method
    puts 5+6
    return 5+6
end

def false_puts(param)
    puts param
    return nil
end

# puts other_method 
a = false_puts 5
puts a