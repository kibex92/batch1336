require_relative 'patient_repository'
require_relative 'room_repository'

patients_csv = "patients.csv"
rooms_csv = "rooms.csv"

room_repo = RoomRepository.new(rooms_csv)
patient_repo = PatientRepository.new(patients_csv, room_repo)

boris = Patient.new(name: "Boris", age: 22)
room = Room.new(name: "Adria", capacity: 5)
room.add_patient(boris)
patient_repo.create(boris)

patients = patient_repo.all
p patients