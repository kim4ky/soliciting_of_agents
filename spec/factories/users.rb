FactoryBot.define do
  factory :user do
    nickname { Faker::Name.initials }
    email { Faker::Internet.email }
    password { 'a1' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end
