class StudentsController < ApplicationController

  before_action :set_student, only: [:show, :get_sorted, :sorted, :get_patronu, :post_patronu]

    def show
      # raise
    end

    def new
      @student = Student.new
    end

    def create
      # put validations in later
      @student = Student.new(student_params)
      if @student.valid?
        @student.save
        session[:student_id] = @student.id
        redirect_to @student
      else
        flash[:errors] = "Please enter details in all fields"
        redirect_to signup_path
      end
    end

    def get_sorted
      @houses = House.all
    end

    def sorted   # Move much of this logic to the Student model
      housearr = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
      random = housearr.sample
      house = House.find_by(name: random)
      @student.update(house: house)
      redirect_to @student
    end

    def get_patronu
      @patronus = Patronu.all
    end

    def post_patronu   # Move much of this logic to the Student model
      patronuarr = ["Stag", "Jack Russell Terrier", "Otter", "Hungarian Horntail", "Rabbit", "Hare",
        "Phoenix", "Blue Eyes White Dragon", "Chinese Fireball", "Leech", "Termite", "King Cobra", "R2D2",
        "Golem", "Marju", "Blobfish"]
      random = patronuarr.sample
      patronu = Patronu.find_by(name: random)
      @student.update(patronu: patronu)
      redirect_to @student
    end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :house_id, :wand_id, :patronu_id, :password)
    end

    #  DO these PARAMS need to be IDs???????????????????        house - wand - patronu

end
