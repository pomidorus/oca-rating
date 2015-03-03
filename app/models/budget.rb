class Budget < ActiveRecord::Base
  belongs_to :city
  validates_presence_of :city

  default_scope { where.not(city: nil) }
end
