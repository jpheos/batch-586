require_relative '../lib/animal'

class Warthog < Animal
  def talk
    "#{@name} grunts"
  end
end