FactoryBot.define do
  factory :network do
    is_following { nil }
    being_followed { nil }
  end
end
