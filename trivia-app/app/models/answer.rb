class Answer < ApplicationRecord
  belongs_to :trivium
  validates :answer, presence: true
end
