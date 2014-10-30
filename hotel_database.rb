require "csv"
require "pry"

class HotelDatabase
  def initialize(file)
    @hotels = {}
    read_hotel_info(file)
  end

  def read_hotel_info(file)
    CSV.foreach(file, headers: true) do |row|
      hotel_name = row["Hotel"]
      @hotels[hotel_name] = row
    end
  end
end

file = "hotels.csv"
HotelDatabase.new(file)
