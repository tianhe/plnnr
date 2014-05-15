class Action < ActiveRecord::Base
  validates :name,        presence: true
  validates :position,    presence: true
  validates :description, presence: true
  validates :task_id,     presence: true

  belongs_to :task
end
