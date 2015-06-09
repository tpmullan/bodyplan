FactoryGirl.define do
  factory :review do
    association :user, factory: :user
    association :program, factory: :program
    body "MyText"
    rating 1
    title "Title"
  end

end
