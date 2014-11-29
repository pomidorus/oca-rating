class CityRating
  RATING_ATTRIBUTES = %w{link?}

  def self.calculate city
    count = 0
    RATING_ATTRIBUTES.each do |attr|
      present = city.send("#{attr}")
      count += 10 if present
    end
    count
  end

  def self.total_calculate cities
    count = 0
    cities.each do |city|
      RATING_ATTRIBUTES.each do |attr|
        count += 10
      end
    end
    count
  end

end
