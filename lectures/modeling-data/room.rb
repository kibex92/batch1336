class Room
  attr_reader :name, :patients, :capacity, :id

  # State
  # - capacity
  # - room_type
  # - name
  # - patients

  def initialize(attributes = {})
    @name = attributes[:name]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
    @id = attributes[:id]
  end

  # Behavior
  # - full?
  # -add_patient

  def full?
    @patients.size >= capacity
  end
  
  def add_patient(patient)
    if full?
      raise StandardError, "The room is full!"
    else
      patient.room = self
      @patients << patient
    end
  end
end