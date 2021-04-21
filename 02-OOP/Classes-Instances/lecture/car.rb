require 'pry-byebug'
# snake_case
# class MyClass
#   Code here
# end
class Car
  attr_accessor :color
  # Equivalent to
  # attr_reader :color
  # attr_writer :color

  # Read access only
  # attr_reader :color
  # Equivalent to
  # def color
  #   @color
  # end

  # Write access only
  # attr_writer :color
  # Equivalent to
  # def color=(new_color)
  #   @color = new_color
  # end

  # Constructor
  # #initialize is called when we do Car.new
  def initialize
    puts "Creating a new car"
    # Data - Instance variable
    @engine_started = false
    # Data - Instance variable
    @color = "black"
  end

  # Behavior
  def start_engine
    start_fuel_pump
    init_spark_plug
    @engine_started = true
  end

  # Behavior
  def engine_started?
    @engine_started
  end

  private # From here

  def start_fuel_pump
    puts "Starting fuel pump"
  end

  def init_spark_plug
    puts "Init spark plug"
  end
end # Class ends herre

