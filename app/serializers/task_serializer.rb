class TaskSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :description, :position
  has_many :main_actions

  def comments
    object.main_actions.to_a
  end
end
