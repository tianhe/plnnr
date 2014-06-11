class ActionProvider < ActiveRecord::Base
  belongs_to :action
  belongs_to :provider

  validates :action_id, presence: true
  validates :provider_id, presence: true
  validates :url, presence: true
end
