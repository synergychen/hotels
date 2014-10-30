require "./decorator"

class Hotel
  attr_reader :name, :location, :phone_number, :number_of_rooms

  def initialize(csv_row)
    decorator = Decorator.new(csv_row)
    decorate_info(decorator)
  end

  def number_of_rooms
    @number_of_singles + @number_of_doubles
  end

  private

  def decorate_info(decorator)
    @name = decorator.strip_string("Hotel")
    @location = decorator.strip_string("City")
    @phone_number = decorator.string_to_phone_number("Phone Number")
    @number_of_singles = decorator.string_to_number("Number of Singles")
    @number_of_doubles = decorator.string_to_number("Number of Doubles")
  end
end
