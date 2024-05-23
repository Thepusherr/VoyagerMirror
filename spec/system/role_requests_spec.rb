require "rails_helper"
 
RSpec.describe "Role management", type: :system do
  before(:each) do
    user = FactoryBot.create(:user)
    subject.sign_in user
  end

  it "enables me to create role" do
    visit "/roles/new"
 
    fill_in "role_name", with: "testrole"
    fill_in "role_description", with: "testdescription"
    click_button "Save"
    expect(page).to have_text("Role was successfully created.")
  end

  it "enables me to edit role" do
    visit "/roles/1/edit"
 
    fill_in "role_name", with: "testrole1"
    fill_in "role_description", with: "testdescription1"
    click_button "Save"
 
    expect(page).to have_text("Role was successfully updated.")
  end


  it "enables me to edit user" do
    visit "/roles"
 
    click_button "Delete"
 
    expect(page).to have_text("Role was successfully destroyed.")
  end
end