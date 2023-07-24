require_relative 'patient'
require_relative 'room'


deyvison = Patient.new({name: "Deyvison", age: 22, cured: false})
leonard = Patient.new({name: "Leonard", age: 25, cured: false})
# p deyvison
ocean = Room.new(name: "Ocean", capacity: 1)
lake = Room.new(name: "Lake", capacity: 1)
lake.add_patient(leonard)
p leonard.room
begin
  ocean.add_patient(deyvison)
  ocean.add_patient(leonard)
rescue StandardError
  # puts "The #{ocean.name} room has no more beds. Can't add #{leonard.name} to the room."
end

# puts "#{ocean.name} has #{ocean.patients.size}. Full? #{ocean.full?}"
# p ocean.patients
p deyvison.room

