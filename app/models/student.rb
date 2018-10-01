class Student < ApplicationRecord
  has_many :lessons
  belongs_to :wand
  belongs_to :house
  belongs_to :patronu
end
