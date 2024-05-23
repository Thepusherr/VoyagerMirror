require "rails_helper"
 
RSpec.describe "Team management", type: :system do
  it "enables me to create team" do
    visit "/teams/new"
 
    fill_in "team_name", with: "testteam"
    fill_in "team_description", with: "testdescr"
   
    click_button "Save"
 
    expect(page).to have_text("Team was successfully created.")
  end

  it "enables me to edit team" do
    visit "/teams/8/edit"
 
    fill_in "team_name", with: "testteam1"
    fill_in "team_description", with: "testdescr1"
   
    click_button "Save"
 
    expect(page).to have_text("Team was successfully updated.")
  end


  it "enables me to edit team" do
    visit "/teams"
 
    click_button "Delete"
 
    expect(page).to have_text("Team was successfully destroyed.")
  end
end