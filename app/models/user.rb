class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  # has_one_attached :avatar
  #
  has_many :user_teams, dependent: :destroy
  has_many :user_roles, dependent: :destroy
  has_many :teams, through: :user_teams
  has_many :roles, through: :user_roles

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true, format: {with: /\A[a-zA-Z0-9_]+\z/}
  validates :email, presence: true, uniqueness: true, format: {with: /\A[a-zA-Z0-9_\-\.]+@[\w\-]+(\.\w{2,})*\z/}
  validates :password, presence: true, length: {minimum: 6}, confirmation: true
end
