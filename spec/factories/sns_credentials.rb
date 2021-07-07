FactoryBot.define do
  factory :sns_credential do
    providere { "facebook" }
    uid { "123456" }
    user { nil }
  end
end
