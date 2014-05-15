class Provider < ActiveRecord::Base
  validates :url, presence: true
  validates :name, presence: true
  validates :description, presence: true

  has_many :actions, through: :action_providers
  has_many :action_providers
end
