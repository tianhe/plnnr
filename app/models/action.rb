class Action < ActiveRecord::Base
  validates :position,    presence: true
  validates :description, presence: true
  validates :task_id,     presence: true
  validates :name,        presence: true
  
  belongs_to :task
#  acts_as_list scope: :task
  acts_as_nested_set
  
  has_many :providers, through: :action_providers
  has_many :action_providers
end
