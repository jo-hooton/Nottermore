class LessonsController < ApplicationController

  def new
    @student = current_user
    @subjects = Subject.all
    @lesson = Lesson.new
  end

  def create
    @student = current_user
    @lesson = Lesson.new(lesson_params, student_id: @student.id)
    if @lesson.valid?
      @lesson.save
      redirect_to @student.lessons
    else
      redirect_to new_lesson_path
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  private

  def lesson_params
    params.require(:lesson).permit(:subject_id)
  end

end
