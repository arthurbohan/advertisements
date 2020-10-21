FactoryBot.define do
  factory :advertisement do
    name { 'Hello, world!' }
    body { 'Hello, world!' }
    user { create :user }
  end
end
