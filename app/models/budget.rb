# == Schema Information
#
# Table name: budgets
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  city_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Budget < ActiveRecord::Base
  belongs_to :city

  default_scope { where.not(city: nil) }
end
