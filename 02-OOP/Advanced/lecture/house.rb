require_relative './building'
require_relative './butler'

# House inherits from Building
class House < Building
  attr_reader :butler

  # Override mother method
  def initialize(name, width, length, butler_name)
    # By default without arguments passes the current parameters
    super(name, width, length)
    # self is the current instance we're working on
    # a House instance
    @butler = Butler.new(butler_name, self)
  end

  # House.price_per_square_meter("Paris")
  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end
end
