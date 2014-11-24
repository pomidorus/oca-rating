module RegionsHelper
  def empty? region
    region.cities.present? ? '':'empty'
  end

  def filter_status region
    region.cities.present? ? '':'disabled'
  end
end
