class UserTask < ActiveRecord::Base
  belongs_to :task
  belongs_to :user

  validates :user_id, presence: true
  validates :task_id, presence: true

  enum status: [:unread, :read, :completed, :archived]
end
