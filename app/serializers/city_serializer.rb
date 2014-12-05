class CitySerializer < ActiveModel::Serializer
  attributes :name

  def name
    object.uk_title
  end
end
