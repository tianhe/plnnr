class Task < ActiveRecord::Base
  validates :name,     presence: true
  validates :description, presence: true
  validates :position, presence: true
  validates :stage_id, presence: true
  
  belongs_to :stage
#  acts_as_list scope: :stage
  
  has_many :actions, -> { order('position ASC') }
end
