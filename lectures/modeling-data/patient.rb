class Patient
  attr_reader :name, :age
  attr_accessor :room, :id

  # STATE
  # - sickness
  # - alive?
  # - name
  # - age
  # - insurance type
  # - cured

  def initialize(attributes = {})
    @name = attributes[:name]
    @age = attributes[:age]
    @cured = attributes[:cured] || false
    @room = attributes[:room]
    @id = attributes[:id]
  end
  
  # BEHAVIOR
  # - cured?
  # - cure!

  def cured?
    @cured
  end

  def cure!
    @cured = true
  end
end
