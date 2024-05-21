require "rails_helper"
 
RSpec.describe "User management", type: :request do
 
  it "creates a user and redirects to the user's page" do
    get "/users/new"
    expect(response).to render_template(:new)
 
    post "/users", params: { user: { first_name: "John", last_name: "Doe", email: "john@example.org" } }
 
    expect(response).to redirect_to(assigns(:user))
    follow_redirect!
 
    expect(response).to render_template(:show)
    expect(response.body).to include("User John Doe (john@example.org) created.")
  end
end