class User < ApplicationRecord
  has_many :trivia_users
  has_many :trivia, through: :trivia_users
end
