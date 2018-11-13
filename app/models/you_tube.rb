class YouTube < ApplicationRecord
  has_many :user_sports
  has_many :users, through: :user_sports
  has_many :sports, through: :user_sports
end
