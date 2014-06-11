# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation { |u| u.password }
  end

  factory :user_profile do
    user
    credit_score 1
    annual_net_income 100000
    annual_gross_income 1000000
    cash 10
    max_budget 1000
    min_budget 100
    estimated_mortgage_amount 1
    estimated_mortgage_rate "9.99"
    actual_mortgage_amount 1
    actual_mortgage_rate "9.99"
    stage "MyString"
  end

  factory :stage do
    name Faker::Lorem.sentence(3)
    description Faker::Lorem.paragraph
    position 1
  end

  factory :action do
    task
    name Faker::Lorem.sentence(3)
    description Faker::Lorem.paragraph
    position 1
    type ""
    url { Faker::Internet.url } 
  end

  factory :main_action, parent: :action do
    task
  end

  factory :feedback_action, parent: :action do
    main_action
  end

  factory :task do
    stage
    name Faker::Lorem.sentence(3)
    description Faker::Lorem.paragraph
    position 1
  end

  factory :user_action do
    user
    action
    status 1
  end

  factory :user_task do
    user
    task
    status 1
  end
end

