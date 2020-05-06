FactoryBot.define do
  factory :user do
    nickname           {"いぬ"}
    description        {""}
    email              {"tennensui@gmail.com"}
    password           {"1111111"}
    encrypted_password {"1111111"}
    birthday           {"2020-04-30"}
    is_deleted         {""}
  end
end