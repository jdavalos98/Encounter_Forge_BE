FactoryBot.define do
  factory :encounter do
    user { nil }
    name { "MyString" }
    total_xp { 1 }
    difficulty_level { "MyString" }
  end
end
