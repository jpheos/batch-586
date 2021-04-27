class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # Define a class method with `self.`
  def self.phyla
    %w[mammals birds fish reptiles amphibians]
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end

  def run
    "I'm running"
  end
end