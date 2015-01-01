class City < ActiveRecord::Base
  belongs_to :region

  default_scope {order(uk_title: :asc)}

  def link_decorator
    if link
      link.gsub('http://www.', '').chomp('/')
    else
      "---"
    end
  end

  def region_name
    region.uk_name
  end

  def link?
    not link.blank?
  end

  def self.to_csv
    CSV.generate :col_sep => "\t"  do |csv|
      csv << column_names
      all.each do |city|
        csv << city.attributes.values_at(*column_names)
      end
    end
  end
end

