require_relative '../lib/animal'

class Lion < Animal
  def talk
    "#{@name} roars"
  end

  # Override Animal#eat
  def eat(food)
    # Call Animal#eat without parameters
    # super()
    # Call Animal#eat with food as parameter
    # super(food)

    "#{super}. Law of the Jungle!"
  end

  def run(distance)
    # Call Animal#run without parameters
    "#{super()} #{distance} miles!"
  end
end
