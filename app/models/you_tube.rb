class YouTube < ApplicationRecord
  belongs_to :user
  has_many :sports, through: :user_sports

end
