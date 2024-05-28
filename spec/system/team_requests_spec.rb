require "rails_helper"
 
RSpec.describe "Team management", type: :system do
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

  it "enables me to create team" do
    visit "/teams/new"
 
    fill_in "team_name", with: "testteam"
    fill_in "team_description", with: "testdescr"
   
    click_button "Save"
 
    expect(page).to have_text("Team was successfully created.")
  end

  it "enables me to edit team" do
    user = FactoryBot.create(
      :user, 
      first_name: 'first_name1',
      last_name: 'last_name1',
      username: 'username2',
      email: 'example@example2.com',
      password: '12345678f'
    )

    team = FactoryBot.create(
      :team, 
      name: 'name111',
      description: 'description111',
      owner_id: user.id
    )
    visit edit_team_path(team)
 
    fill_in "team_name", with: "testteam1"
    fill_in "team_description", with: "testdescr1"
   
    click_button "Save"
 
    expect(page).to have_text("Team was successfully updated.")
  end


  it "enables me to delete team" do
    user = FactoryBot.create(
      :user, 
      first_name: 'first_name1',
      last_name: 'last_name1',
      username: 'username2',
      email: 'example@example2.com',
      password: '12345678f'
    )

    team = FactoryBot.create(
      :team, 
      name: 'name111',
      description: 'description111',
      owner_id: user.id
    )

    visit "/teams"
 
    click_button "Delete"
 
    expect(page).to have_text("Team was successfully destroyed.")
  end
end