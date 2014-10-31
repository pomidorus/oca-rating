module RegionsHelper
  def empty? region
    region.cities.present? ? '':'empty'
  end
end
