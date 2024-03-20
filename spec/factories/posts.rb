FactoryBot.define do
  factory :post do
    game_mode_id { 2 }
    content { Faker::Lorem.sentence }
    association :user
  end
end
