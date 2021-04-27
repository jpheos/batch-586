class Patient
  attr_reader :room
  attr_accessor :id
  def initialize(attributes={})
    @name  = attributes[:name]
    @cured = attributes[:cured] || false
  end

  def cure!
    @cured = true
  end

  # def set_room(room)
  #   @room = room
  # end
end