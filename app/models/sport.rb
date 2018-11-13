class Sport < ApplicationRecord
  has_many :user
  has_many :users, through: :user_sports
end
