class FeedbackAction < Action
  belongs_to :task
#  belongs_to :main_action, foreign_key: 'parent_action_id'
#  acts_as_list scope: :task

  has_many :providers, through: :action_providers
  has_many :action_providers
end
