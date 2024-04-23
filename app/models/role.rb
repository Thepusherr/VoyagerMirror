class Role < ApplicationRecord
  has_many :users
  has_many :teams

  validates :name, presence: true
  validates :description, presence: true
end
