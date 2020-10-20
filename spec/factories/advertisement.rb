FactoryBot.define do
  factory :advertisement do
    title { 'Hello, world!' }
    body { 'Hello, world!' }
    user { create :user }
  end
end
