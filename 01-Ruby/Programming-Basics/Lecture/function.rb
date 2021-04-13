#DRY = Don't repeat yourself

def greeting (name) 
    puts "Hello #{name}!"
end

def full_name(first_name, last_name)
    name = first_name.capitalize + " " + last_name.capitalize
    return name
end

first_name = "boris"
last_name = "vian"
full_name = full_name(last_name, first_name)   # => "Boris Paillard"
puts full_name
puts last_name
# puts full_name("seb", "saunier") 

# name = "jeanro"

# puts greeting(name) # puts greeting("jeanro")

# def goodbye (name)
#     puts "Bye #{name}!"
# end

# def greeting_all(name_list)
#     name_list.each do |name|
#         greeting(name)
#     end
# end

# puts "Hello John!"
# puts "Hello Paul!"
# puts "Hello Ringo!"

# names = ["jojo", "jeanro", "juju"]

# greeting(names)