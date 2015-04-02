# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  uk_name    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

describe Region do
  it { should have_many :cities}
end
