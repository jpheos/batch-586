
class Room
  class OverCapacityError < Exception

  end
  attr_reader :patients
  attr_accessor :id

  def initialize(attributes={})
    @capacity = attributes[:capacity]
    @patients = []
    @name     = attributes[:name]
  end

  def full?
    @capacity == @patients.size
  end

  def add_patient(patient)
    if full?
      fail Room::OverCapacityError, "room is full!"
    else
      @patients << patient
      p patient
      puts "-----"
      p self
      puts "-------"
      p patient.room 
      patient.room = self
    end
  end
end