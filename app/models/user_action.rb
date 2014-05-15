class UserAction < ActiveRecord::Base
  belongs_to :action
  belongs_to :user

  validates :user_id, presence: true
  validates :action_id, presence: true

  enum status: [:unread, :read, :completed, :archived]
end
