class Action < ActiveRecord::Base
  validates :position,    presence: true
  validates :description, presence: true
  validates :task_id,     presence: true

  belongs_to :task
#  acts_as_list scope: :task

  has_many :providers, through: :action_providers
  has_many :action_providers
end
