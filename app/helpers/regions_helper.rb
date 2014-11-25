module RegionsHelper
  def empty? region
    region.cities.present? ? '':'empty'
  end

  def filter_status region
    region.cities.present? ? '':'disabled'
  end

  def filter_active region
    region.uk_name == params[:region] ? 'active' : ''
  end

  def filter_all_active
    params[:region].present? ? '' : 'active'
  end
end
