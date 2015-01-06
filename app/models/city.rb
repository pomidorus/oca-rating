# == Schema Information
#
# Table name: cities
#
#  id               :integer          not null, primary key
#  uk_title         :string(255)
#  lgs_link         :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  ru_title         :string(255)
#  en_title         :string(255)
#  region_id        :integer
#  link             :string(255)
#  asset_disclosure :string(255)
#

class City < ActiveRecord::Base
  belongs_to :region

  default_scope {order(uk_title: :asc)}

  def region_name
    region.uk_name
  end

  def link?
    not link.blank?
  end

  def asset_disclosure?
    not asset_disclosure.blank?
  end

  def self.to_csv
    cn = [ 'uk_title', 'link', 'region']
    CSV.generate :col_sep => "\t"  do |csv|
      csv << cn
      all.each do |city|
        csv << [city.uk_title, city.link, city.region_name]
      end
    end
  end

  def self.import file
    CSV.foreach(file.path, headers: true, :col_sep => "\t") do |row|
      city = where('uk_title = ?', row['uk_title']).first || new
      city.uk_title = row['uk_title']
      city.link = row['link']
      region = Region.where('uk_name = ?', row['region']).first
      city.region = region
      city.save!
    end
  end
end

