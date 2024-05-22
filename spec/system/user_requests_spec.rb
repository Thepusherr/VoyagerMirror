require "rails_helper"
 
RSpec.describe "User management", type: :system do
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
    visit "/users/8/edit"
 
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