class Trivium < ApplicationRecord
  belongs_to :category
  has_many :trivia_users
  has_many :users, through: :trivia_users
  has_many :answers

  validates :question, presence: true
  validates :difficulty, presence: true
  validates :difficulty, inclusion: { in: %w(easy medium hard)}
  

end
