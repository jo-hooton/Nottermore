class Professor < ApplicationRecord

  belongs_to :house
  has_one :subject

  has_many :lessons
  has_many :students, through: :lessons

  def subject_name
    self.subject.name
  end

end
