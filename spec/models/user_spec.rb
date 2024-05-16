require 'rails_helper'

RSpec.describe User, type: :model do
  # let(:user) { |ex| described_class.new ex.metadata[:name] || '', '', '', '' }
  context "validation tests" do
    it "has valid first_name" do
      user = User.new(
        first_name: "",
        last_name: 'last_name1',
        username: 'username1',
        email: 'example@example.com',
        password: '12345678f'
      )
      expect(user).not_to be_valid
      user.first_name = "first_name1"
      expect(user).to be_valid
    end

    it "has valid last_name" do
      user = User.new(
        first_name: 'first_name1',
        last_name: '',
        username: 'username1',
        email: 'example@example.com',
        password: '12345678f'
        )
      expect(user).not_to be_valid
      user.last_name = "last_name1"
      expect(user).to be_valid
    end

    it "has valid username" do
      user = User.new(
        first_name: 'first_name1',
        last_name: 'last_name1',
        username: '',
        email: 'example@example.com',
        password: '12345678f'
        )
      expect(user).not_to be_valid
      user.username = "username1"
      expect(user).to be_valid
    end

    it "has valid email" do
      user = User.new(
        first_name: 'first_name1',
        last_name: 'last_name1',
        username: 'username1',
        email: '',
        password: '12345678f'
        )
      expect(user).not_to be_valid
      user.email = "example@example.com"
      expect(user).to be_valid
    end

    it "has valid password" do
      user = User.new(
        first_name: 'first_name1',
        last_name: 'last_name1',
        username: 'username1',
        email: 'example@example.com',
        password: ''
      )
      expect(user).not_to be_valid
      user.password = "12345678f"
      expect(user).to be_valid
    end

    it "has valid name type", name: nil do
      expect(user.name).to be_an_instance_of(String)
    end
  end

  context "scope tests" do
    let(:params) { { first_name: 'first_name1', last_name: 'last_name1', username: 'username1', email: 'example@example.com', password: '123' } }
    before(:each) do
      User.create(params)
      User.create(first_name: 'first_name2', last_name: 'last_name2', username: 'username2', email: 'example@example2.com', password: '1234')
      User.create(params)
      User.create(first_name: 'first_name3', last_name: 'last_name3', username: 'username3', email: 'example@example3.com', password: '12345', admin: true)
      User.create(first_name: 'first_name4', last_name: 'last_name4', username: 'username4', email: 'example@example4.com', password: '123456', admin: true)
      User.create(first_name: 'first_name5', last_name: 'last_name45', username: 'username45', email: 'example@example45.com', password: '1234567', admin: true)
    end

    it "should be able to select admin users" do
      expect(User.admin.count()).to eq(2)
    end
  end
end
