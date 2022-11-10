FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "test#{n}@example.com"
    end
    password { "lettuce123" }
    password_confirmation { "lettuce123" }
  end
end
