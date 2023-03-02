FactoryBot.define do 
  factory :user do
    email { Faker::Internet.unique.email }
    password { Faker::Internet.password(min_length: 6, mix_case: true, special_characters: true) }
  end
end