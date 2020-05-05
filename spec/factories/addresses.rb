FactoryBot.define do
  factory :address do
    last_name       {"田中"}
    first_name      {"佐藤"}
    last_name_kana  {"たなか"}
    first_name_kana {"さとう"}
    postal_code     {"0001111"}
    prefecture_id   {3}
    city            {"大阪市西淀川区"}
    address         {"淀川35-14"}
    building        {""}
    tel             {""}
  end
end