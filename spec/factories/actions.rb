# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :action do
    task_id ""
    name "MyString"
    description "MyText"
    position 1
    type ""
    url "MyString"
  end
end
