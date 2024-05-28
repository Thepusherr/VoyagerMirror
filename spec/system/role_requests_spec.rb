require "rails_helper"
 
RSpec.describe "Role management", type: :system do
  before(:each) do
    user = FactoryBot.create(
      :user, 
      first_name: 'first_name1',
      last_name: 'last_name1',
      username: 'username1',
      email: 'example@example.com',
      password: '12345678f',
      admin: true
    )
    login_as(user, scope: :user)
  end

  it "enables me to create role" do
    visit "/roles/new"
 
    fill_in "role_name", with: "testrole"
    fill_in "role_description", with: "testdescription"
    click_button "Save"
    expect(page).to have_text("Role was successfully created.")
  end

  it "enables me to edit role" do
    role = FactoryBot.create(
      :role, 
      name: 'name111',
      description: 'description111',
    )
    visit edit_role_path(role)
 
    fill_in "role_name", with: "testrole1"
    fill_in "role_description", with: "testdescription1"
    click_button "Save"
 
    expect(page).to have_text("Role was successfully updated.")
  end


  it "enables me to delete user" do
    role = FactoryBot.create(
      :role, 
      name: 'name111',
      description: 'description111',
    )
    visit "/roles"
 
    click_button "Delete"
 
    expect(page).to have_text("Role was successfully destroyed.")
  end
end