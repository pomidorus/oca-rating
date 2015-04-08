# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  uk_name    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Region < ActiveRecord::Base
  has_many :cities

  default_scope {order(uk_name: :asc)}

  def self.get_header region
    region.present? ? name_decorator(region)  : 'Все области'
  end

  def self.name_decorator region
    region.eql?('Автономна Республіка Крим') ? region : "#{region} область"
  end
end


