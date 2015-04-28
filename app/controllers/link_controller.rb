class LinkController < ApplicationController
  before_filter :find_city, only: [:show, :budget, :disclosures]

  def show
  end

  def budget
  end

  def disclosures
  end

  private

  def find_city
    @city = City.find_by_slug!(params[:id])
  end
end
