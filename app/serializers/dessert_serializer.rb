class DessertSerializer < ActiveModel::Serializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :type
end
