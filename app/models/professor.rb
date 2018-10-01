class Professor < ApplicationRecord
  belongs_to :house
  has_one :subject
  has_many :lessons
end
