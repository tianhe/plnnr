# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    stage_id ""
    name "MyString"
    description "MyText"
    position 1
  end
end
