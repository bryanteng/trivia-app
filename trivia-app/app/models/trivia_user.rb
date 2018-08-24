class TriviaUser < ApplicationRecord
  belongs_to :user
  belongs_to :trivium, foreign_key: :trivia_id


end
