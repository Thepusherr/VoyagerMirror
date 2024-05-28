FactoryBot.define do
  factory(:user) do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  factory(:role) do
    name { "name1" }
    description { "description1" }
  end

  factory(:team) do
    name { "name1" }
    description { "description1" }
  end
end