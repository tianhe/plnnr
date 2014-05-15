class MainAction < Action
  belongs_to :task
#  acts_as_list scope: :task

  has_many :providers, through: :action_providers
  has_many :action_providers
end
