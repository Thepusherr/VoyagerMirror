require "rails_helper"
 
RSpec.describe "User management", type: :system do
  it "enables me to create user" do
    visit "/user/new"
 
    fill_in "Name", with: "Acm'e Ltd."
    fill_in "Address", with: "6 Av. Elysian fields"
    click_button "Create User"
 
    expect(page).to have_text("User successfully created.")
  end
end