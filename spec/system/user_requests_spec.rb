require "rails_helper"
 
RSpec.describe "User management", type: :system do
  before(:each) do
    user = FactoryBot.create(
      :user, 
      first_name: 'first_name1',
      last_name: 'last_name1',
      username: 'username1',
      email: 'example@example.com',
      password: '12345678f'
    )
    login_as(user, scope: :user)
  end

  it "enables me to create user" do
    visit "/users/new"
 
    fill_in "user_email", with: "test123@gmail.com"
    fill_in "user_username", with: "testusername"
    fill_in "user_first_name", with: "testfirstname"
    fill_in "user_last_name", with: "testlastname"
    fill_in "user_password", with: "testpassword"
    fill_in "user_password_confirmation", with: "testpassword"
    click_button "Save"
 
    expect(page).to have_text("User was successfully created.")
  end

  it "enables me to edit user" do
    user = FactoryBot.create(
      :user, 
      first_name: 'first_name2',
      last_name: 'last_name2',
      username: 'username2',
      email: 'example@example2.com',
      password: '12345678ff'
    )
    
    visit edit_user_path(user)
 
    fill_in "user_email", with: "test123@gmail.com"
    fill_in "user_username", with: "testusername"
    fill_in "user_first_name", with: "testfirstname"
    fill_in "user_last_name", with: "testlastname"
    fill_in "user_password", with: "testpassword"
    fill_in "user_password_confirmation", with: "testpassword"
    click_button "Save"
 
    expect(page).to have_text("User was successfully updated.")
  end


  it "enables me to edit user" do
    visit "/users"
 
    click_button "Delete"
 
    expect(page).to have_text("User was successfully destroyed.")
  end
end