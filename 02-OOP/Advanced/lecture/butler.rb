class Butler
  attr_reader :name, :house

  def initialize(name, house)
    @name = name
    @house = house
  end
end

# butler.house -> House instance