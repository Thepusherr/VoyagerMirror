class Team < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :user_teams, dependent: :destroy
  has_many :users, through: :user_teams
  has_many :roles, through: :team_roles

  validates :name, presence: true
  validates :description, presence: true
  validates :owner_id, presence: true
end
