class Student < ApplicationRecord
  belongs_to :house, optional: true
  belongs_to :wand, optional: true
  belongs_to :patronu, optional: true

  has_many :lessons
  has_many :professors, through: :lessons

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, on: :create     #, on: create is very important here!
  #  need the , on :create - otherwise any edits to the student cannot happen without password being present -




  def user_name
    self.first_name + self.last_name
  end



end
