class TaskSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name, :description, :position
  has_many :main_actions
end
