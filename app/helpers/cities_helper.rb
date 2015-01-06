module CitiesHelper
  def link_decorator link
    link.present? ? link.gsub('http://', '').gsub('www.', '').chomp('/') : ''
  end
end
