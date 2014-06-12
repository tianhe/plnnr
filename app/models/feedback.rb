class Feedback < ActiveRecord::Base
  validates :action_id, presence: true

  belongs_to :action

  has_many :providers, through: :action_providers
  has_many :action_providers
end
