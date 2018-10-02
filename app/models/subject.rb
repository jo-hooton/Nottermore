class Subject < ApplicationRecord
  belongs_to :professor

  def professor_name
    self.professor.name
  end

end
