FactoryGirl.define do
  factory :user do |u|
    u.name "Administrator"
    u.sequence(:email) {|n| "person#{n}@example.com" }
    u.password "tester"
    u.password_confirmation "tester"
  end

  trait :confirmed do
    confirmed_at 1.hour.ago
  end

  trait :not_confirmed do
    confirmed_at nil

    after(:create) do |user|
      user.update_attributes(confirmation_sent_at: 3.days.ago)
    end
  end
end
