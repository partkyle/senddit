# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    post
    text "lorem ispsum"
    email "test@testing.com"
  end
end
