class TriviaUsers < ApplicationRecord
  belongs_to :user
  belongs_to :trivium
end
