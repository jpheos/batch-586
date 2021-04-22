require_relative '../lib/animal'

class Meerkat < Animal
  def talk
    "#{@name} barks"
  end
end