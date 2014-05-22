class StageSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :description, :position
  has_many :tasks
end
