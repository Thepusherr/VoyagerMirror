require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let!(:user) { User.create(first_name: 'first_name2', last_name: 'last_name2', username: 'username2', email: 'example@example2.com', password: '1234') }

  before (:each) do
    sign_in(user) # Factory Bot user
  end

  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  context "GET #edit" do
    it "returns a success response" do
      get "/users/edit", params { "id": 1 }
      expect(response).to be_successful
    end
  end

  # context "GET #show" do
  #   let(:user) { User.create(first_name: 'first_name1',last_name: 'last_name1',username: 'username1',email: 'example@example.com', password: '123') }
  #   it "returns a success response" do
  #     get :show, params: { id: user }
  #     expect(response).to be_successful
  #   end
  # end
end