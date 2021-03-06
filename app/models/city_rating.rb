class CityRating
  RATING_ATTRIBUTES = %w{link? asset_disclosure? has_budget_url?}

  def initialize cities
    @cities = cities
    @rating = {}
    calculate_rating
  end

  def position_of city
    @rating[city.id]
  end

  private

  def calculate_rating
    count = []
    @cities.each { |city| count << {city.id => calculate(city)} }
    count.sort! {|x,y| y.values[0] <=> x.values[0]}
    count.each_with_index { |c, index| @rating[c.keys[0]] = index + 1 }
  end

  def calculate city
    count = 0
    RATING_ATTRIBUTES.each do |attr|
      present = city.send("#{attr}")
      count += 10 if present
    end
    count
  end
end
