module Ux
  class Tester < ActiveRecord::Base
    validates_presence_of :name, :profession, :profile
  end
end
