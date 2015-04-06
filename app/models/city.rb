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

class City < ActiveRecord::Base
  belongs_to :region

  has_one :site
  accepts_nested_attributes_for :site

  has_one :asset_disclosures, class_name: 'AssetDisclosure'
  accepts_nested_attributes_for :asset_disclosures

  has_one :budget
  accepts_nested_attributes_for :budget

  default_scope {order(uk_title: :asc)}

  def region_name
    region.uk_name if region
  end

  #-----------------------------
  def site_url
    site.url if site
  end

  def asset_disclosure_url
    asset_disclosures.url if asset_disclosures
  end

  def budget_url
    budget.url if budget
  end

  #--------------------
  def site?
    not site_url.blank?
  end

  def asset_disclosure?
    not asset_disclosure_url.blank?
  end

  def budget?
    not budget_url.blank?
  end

  def has_budget_url?
    not budget_url.blank?
  end

  #-----------------------------
  def self.sites
    City.all.map {|c| c.site}
  end

  def self.asset_disclosures
    City.all.map {|c| c.asset_disclosure}
  end

  def self.links_count
    sites.compact.count + asset_disclosures.compact.count
  end

  #---------------------------------------
  # экспорт в цсв файл
  def self.to_csv
    cn = %w(uk_title region site_url asset_disclosure_url budget_url)
    CSV.generate :col_sep => "\t"  do |csv|
      csv << cn
      all.each do |city|
        csv << [city.uk_title, city.region_name, city.site_url, city.asset_disclosure_url, city.budget_url]
      end
    end
  end

  # импорт данных из файла
  # TODO
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

