require 'csv'
require_relative 'patient'

class PatientRepository
  # STATE
  # - patients -> Array
  # - csv_file_path
  def initialize(csv_file_path, room_repository)
    @csv_file_path = csv_file_path
    @room_repository = room_repository # -> Instance of RoomRepository
    @patients = []
    @next_id = 1
    load_csv
  end

  def all
    @patients
  end
  
  def create(patient)
    patient.id = @next_id
    @next_id += 1
    @patients << patient
    # SAVE_CSV
  end
  
  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      # row -> {name: "Deyvison", age: "22", ...}
      row[:id] = row[:id].to_i
      row[:age] = row[:age].to_i
      row[:cured] = row[:cured] == "true"
      room = @room_repository.find(row[:room_id].to_i)
      row[:room] = room
      patient = Patient.new(row)
      @patients << patient
    end
    @next_id = @patients.last.id + 1 unless @patients.empty?
  end
end
