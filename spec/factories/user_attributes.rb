# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_attribute, :class => 'UserAttributes' do
    credit_score 1
    annual_income 1
    cash 1
    max_budget 1
    min_budget 1
    estimated_mortgage_amount 1
    estimated_mortgage_rate "9.99"
    actual_mortgage_amount 1
    actual_mortgage_rate "9.99"
    stage "MyString"
  end
end
