# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_action do
    user_id 1
    action_id 1
    status 1
  end
end
