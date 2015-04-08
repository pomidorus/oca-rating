# == Schema Information
#
# Table name: sites
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  city_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Site < ActiveRecord::Base
  belongs_to :city

  default_scope { where.not(url: '') }
  scope :empty_url, -> { where(url: '') }
end
