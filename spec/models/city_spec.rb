# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  uk_title   :string(255)
#  lgs_link   :string(255)
#  created_at :datetime
#  updated_at :datetime
#  ru_title   :string(255)
#  en_title   :string(255)
#  region_id  :integer
#  link       :string(255)
#

require 'rails_helper'

describe City do
  it { should belong_to  :region}
  it { should respond_to :link }

  it { should respond_to :link_decorator }
end
