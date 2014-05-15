class Task < ActiveRecord::Base
  validates :name,     presence: true
  validates :description, presence: true
  validates :position, presence: true
  validates :stage_id, presence: true
  
  belongs_to :stage
  has_many :actions
end
