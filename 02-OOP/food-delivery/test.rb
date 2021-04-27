require_relative "patient.rb"
require_relative "room.rb"

fanny = Patient.new(name:"fanny")
jean  = Patient.new(name:"jean")

jaune = Room.new(capacity: 2, name: "jaune")

jaune.add_patient(fanny)
jaune.add_patient(jean)

puts "jusqu'ici tout va bien !"

toto  = Patient.new(name:"toto")
begin
  jaune.add_patient(toto)
rescue Room::OverCapacityError => exception
  p exception.message
  puts "room to full"
end

p fanny.room.object_id
p jaune.object_id
puts "et là"
