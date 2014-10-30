require "csv"
require "pry"
require "./hotel"

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
      hotel = Hotel.new(row)
      @hotels[hotel.name] = hotel
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
    puts "Name: #{hotel_info.name}"
    puts "Location: #{hotel_info.location}"
    puts "Phone Number: #{hotel_info.phone_number}"
    puts "Number of Rooms: #{hotel_info.number_of_rooms}"
  end
end

file = "hotels.csv"
hotel_db = HotelDatabase.new(file)
hotel_db.query_hotel

