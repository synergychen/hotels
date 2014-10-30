class Decorator
  def initialize(csv_row)
    @csv_row = csv_row
  end

  def strip_string(string)
    @csv_row[string].strip
  end

  def string_to_phone_number(string)
    pattern = /(\d{2})?\(?(\d{3})\)?[-.]?(\d{3})[-.]?(\d{4})/
    match = pattern.match(@csv_row[string])
    "+#{match[1] || 1} (#{match[2]}) #{match[3]}-#{match[4]}"
  end

  def string_to_number(string)
    @csv_row[string].gsub(",", "").to_i
  end
end
