class MunicipalSitesController < ApplicationController
  def index
    @sites = Site.with_city
    # @sites.each do |site|
    #   begin
    #     # Cloudinary::Uploader.upload("http://img.bitpixels.com/getthumbnail?code=80416&size=200&url=#{site.url}", public_id: "#{site.city.to_param}")
    #     # unless File.exist?("data/#{site.city.to_param}.jpg")
    #     #   File.open("data/#{site.city.to_param}.jpg", "wb") do |f|
    #     #     f.write HTTParty.get("http://img.bitpixels.com/getthumbnail?code=80416&size=200&url=#{site.url}").parsed_response
    #     #   end
    #     # end
    #   rescue
    #     # Rails.logger.debug 'ss'
    #   end
    # end
  end
end
