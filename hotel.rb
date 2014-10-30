class Hotel
  attr_reader :name, :location, :phone_number, :number_of_rooms

  def initialize(csv_row)
    @name = csv_row["Hotel"]
    @location = csv_row["City"]
    @phone_number = csv_row["Phone Number"]
    @number_of_singles = csv_row["Number of Singles"]
    @number_of_doubles = csv_row["Number of Doubles"]
  end

  def number_of_rooms
    @number_of_singles.to_i + @number_of_doubles.to_i
  end
end
