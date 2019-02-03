class StudentsController < ApplicationController
  def new
    #code
    @student = Student.new
  end

  def create
    # byebug
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    #code
    @student = Student.find(params[:id])
  end

  def edit
    #code
    @student = Student.find(params[:id])
  end

  def update
    #code
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end
end
