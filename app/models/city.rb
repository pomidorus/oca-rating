class City < ActiveRecord::Base
  belongs_to :region

  def link_decorator
    if link
      link.gsub('http://www.', '').chomp('/')
    else
      "#{uk_title} has no web link"
    end
  end
end

