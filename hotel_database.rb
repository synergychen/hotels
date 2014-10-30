require "csv"
require "pry"

class HotelDatabase
  def initialize(file)
    @hotels = {}
    read_hotel_info(file)
  end

  def query_hotel
    hotel_name = query_user_input
    matched_hotel = find_hotel(hotel_name)
    list_hotel(matched_hotel)
  end

  private

  def read_hotel_info(file)
    CSV.foreach(file, headers: true) do |row|
      hotel_name = row["Hotel"]
      @hotels[hotel_name] = row
    end
  end

  def query_user_input
    print "Which hotel information you want to know >> "
    gets.chomp
  end

  def find_hotel(name)
    @hotels[name]
  end

  def list_hotel(hotel_info)
    puts "Name: #{hotel_info["Hotel"]}"
    puts "Location: #{hotel_info["City"]}"
    puts "Phone Number: #{hotel_info["Phone Number"]}"
    puts "Number of Rooms: #{hotel_info["Number of Singles"] + hotel_info["Number of Doubles"]}"
  end
end

file = "hotels.csv"
hotel_db = HotelDatabase.new(file)
hotel_db.query_hotel

