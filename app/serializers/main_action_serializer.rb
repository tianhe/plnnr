class MainActionSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name, :description, :position
end
