class Student < ApplicationRecord
  belongs_to :house, optional: true
  belongs_to :wand, optional: true
  belongs_to :patronu, optional: true

  has_many :lessons
  has_many :professors, through: :lessons


  # validates :email, presence: true, uniqueness: true


  def user_name
    self.first_name + self.last_name
  end



end
