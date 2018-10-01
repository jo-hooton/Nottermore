class Student < ApplicationRecord
  belongs_to :house
  belongs_to :wand
  belongs_to :patronu

  has_many :lessons
  has_many :professors, through: :lessons

end
