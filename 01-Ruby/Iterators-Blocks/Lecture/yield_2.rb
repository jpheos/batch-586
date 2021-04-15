def beautify_name(first_name, last_name)
    full_name = "#{first_name.capitalize} #{last_name.upcase}"
    yield(full_name)
end

beautify_name("john", "doe") do |nimportequoi|
    puts nimportequoi
end