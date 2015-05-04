require 'securerandom'

module Ux
  class Tester < ActiveRecord::Base
    validates_presence_of :name, :profession, :profile
    validates :access_code, uniqueness: true, presence: true

    before_validation :generate_access_code

    def generate_access_code
      raw_string = SecureRandom.random_number( 2**80 ).to_s( 20 ).reverse
      long_code = raw_string.tr( '0123456789abcdefghij', '234679QWERTYUPADFGHX' )
      self.access_code ||= long_code[0..3] + '-' + long_code[4..7] + '-' + long_code[8..11]
    end

    def self.authenticate(access_code)
      find_by_access_code(access_code)
    end
  end
end
