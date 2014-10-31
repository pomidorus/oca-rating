require 'rails_helper'

describe City do
  it { should belong_to  :region}
  it { should respond_to :link }
end
