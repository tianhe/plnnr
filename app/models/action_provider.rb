class ActionProvider < ActiveRecord::Base
  belongs_to :action
  belongs_to :provider

  validates :action, presence: true
  validates :provider, presence: true
  validates :url, presence: true
end
