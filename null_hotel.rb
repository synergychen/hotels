class NullHotel
  attr_reader :name, :location, :phone_number, :number_of_rooms

  def initialize
    @name = "Not Found"
    @location = "Not Found"
    @phone_number = "Not Found"
    @number_of_rooms = "Not Found"
  end
end
