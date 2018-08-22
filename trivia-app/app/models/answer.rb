class Answer < ApplicationRecord
  belongs_to :trivia
  validates :answer, presence: true
end
