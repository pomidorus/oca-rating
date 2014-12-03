class RegionSerializer < ActiveModel::Serializer
  attributes :id, :name

  def name
    object.uk_name
  end
end
