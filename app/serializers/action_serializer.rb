class ActionSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :description, :position  
end
