FactoryBot.define do
  factory :monster do
    name { "MyString" }
    challenge_rating { 1.5 }
    hit_points { 1 }
    monster_type { "MyString" }
    xp { 1 }
    custom { false }
    created_by_user { nil }
  end
end
