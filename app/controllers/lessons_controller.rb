class LessonsController < ApplicationController

  def new
    @student = current_user
    @lesson = Lesson.new
  end

  def create
    @student = current_user
    @lessons = []
    params[:lesson][:professor_id].each do |prof_id|
      @lessons << Lesson.new(professor_id: prof_id, student_id: @student.id)
    end
    # for each professor id - selected in the checkboxes, each prof_id is being added to @lessons empty array
    # prof_id is what's being iterated over in the Lesson.new bit
    @lessons.each do |lesson|
      if lesson.valid?
        lesson.save
        # only if each lesson is valid, is it saved into DB
      else
        redirect_to new_lesson_path
      en
    end
    redirect_to @student
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  private

  def lesson_params
    params.require(:lesson).permit(:professor_id => [])
  end

end
