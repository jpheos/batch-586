class Building
  # Adds #name method to the class public interface
  attr_reader :name

  # Constructor
  def initialize(name, width, length)
    # Assign paramaters values in instances variables
    @name = name
    @width = width
    @length = length
  end

  # Instance method has access to instance variables directly
  def floor_area
    @width * @length
  end
end


#                     Building
#      |                 |                   |
#    House            Castle             Skyscraper
#                 #has_a_butler?
#           calls super in #floor_area
