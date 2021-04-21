require_relative 'car'
require 'pry-byebug'

# DEBUG STUFF
def clean_name(name)
  name.strip
end

def full_name(first_name, last_name)
  # Breakpoint here
  binding.pry
  first_name = clean_name(first_name)
  cleaned_last_name  = clean_name(last_name)

  "#{cleaned_first_name} #{cleaned_last_name}"
end

puts full_name("  John     123            ", "Rambo")




# CAR STUFF
# Instantiation et appel au constructor
my_car = Car.new

# Display public methods of an instance
puts my_car.public_methods(false)

my_car.start_engine

