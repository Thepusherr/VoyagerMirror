Fabricator(:user) do
  team
  role(count: 2)
  name { Faker::Name.name }
  age 45
end