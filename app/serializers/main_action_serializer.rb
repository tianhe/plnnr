class MainActionSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :description, :position
  has_many :feedback_actions
end
