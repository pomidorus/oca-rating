class City < ActiveRecord::Base
  belongs_to :region

  def link_decorator
    if link
      link.gsub('http://www.', '').chomp('/')
    else
      "---"
    end
  end

  def region_name
    region.uk_name
  end

  def link?
    not link.blank?
  end
end

