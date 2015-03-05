class CreateSiteFromLink < ActiveRecord::Migration
  def change
    City.all.each do |city|
      unless city.link.blank?
        site = city.build_site
        site.url = city.link
        site.save!
      end
    end
  end
end
