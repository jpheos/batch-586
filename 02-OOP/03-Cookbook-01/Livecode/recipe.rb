class Recipe
  attr_reader :name, :description
  # State = instance variables : name, description
  # Behiavor = instance methods

  def initialize(name, description)
    @name = name
    @description = description
  end
end
