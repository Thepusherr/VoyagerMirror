require "rails_helper"

RSpec.describe "routes for Articles", type: :routing do
  it "routes /users to the users controller" do
    expect(get("/users")).to route_to("users#index")
  end

  it "routes /teams to the team controller" do
    expect(get("/teams")).to route_to("teams#index")
  end

  it "routes /roles to the roles controller" do
    expect(get("/roles")).to route_to("roles#index")
  end

  it "routes user_path to the users controller" do
    expect(get(users_path)).to route_to("users#index")
  end  
end