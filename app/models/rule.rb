class Rule < ActiveRecord::Base
  validates :triggering_action_id,     presence: true
  validates :resulting_action_id,      presence: true
  
  belongs_to :triggering_action, foreign_key: :triggering_action_id, class: 'Action'
  belongs_to :resulting_action,  foreign_key: :resulting_action_id,  class: 'Action'
end
