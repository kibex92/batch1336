require_relative "room"

class RoomRepository
  # STATE
  # - rooms -> Array
  # - csv_file_path
  def initialize(csv_file_path)
    @csv_file_path = (csv_file_path)
    @rooms = []
    load_csv
  end

  def find(id)
    @rooms.find { |room| room.id == id }
  end
  
  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity].to_i

      room = Room.new(row)
      @rooms << room
    end
  end
end