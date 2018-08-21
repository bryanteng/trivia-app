class User < ApplicationRecord
  has_many :questions
  has_many :categories, through: :questions
end
