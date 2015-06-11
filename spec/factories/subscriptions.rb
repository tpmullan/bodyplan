FactoryGirl.define do
  factory :subscription do
    association :user, factory: :user
    association :program, factory: :program
  end

end
