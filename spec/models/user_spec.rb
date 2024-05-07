require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { |ex| described_class.new ex.metadata[:name] || 'name1', '', '', '' }

  it "has valid first_name" do
    user = User.new(
      first_name: '',
      last_name: 'last_name1',
      username: 'username1',
      email: 'example@example.com',
      password: '12345678f',
    )
    expect(user.first_name).to_not be_valid
    user.first_name = "first_name1"
  end

  it "has valid last_name" do
    user = User.new(
      first_name: 'first_name1',
      last_name: '',
      username: 'username1',
      email: 'example@example.com',
      password: '12345678f',
      )
    expect(user.last_name).to_not be_valid
    user.last_name = "last_name1"
    expect(user.last_name).to be_valid
  end

  it "has valid username" do
    user = User.new(
      first_name: 'first_name1',
      last_name: 'last_name1',
      username: '',
      email: 'example@example.com',
      password: '12345678f',
      )
    expect(user.username).to_not be_valid
    user.username = "username1"
    expect(user.username).to be_valid
  end

  it "has valid username" do
    user = User.new(
      first_name: 'first_name1',
      last_name: 'last_name1',
      username: 'username1',
      email: '',
      password: '12345678f',
      )
    expect(user.email).to_not be_valid
    user.email = "example@example.com"
    expect(user.email).to be_valid
  end

  it "has valid name type", name: nil do
    expect(user.name).to be_an_instance_of(String)
  end
end
