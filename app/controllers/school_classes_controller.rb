class SchoolClassesController < ApplicationController
  def new
    #code
    @school_class = SchoolClass.new
  end

  def create
    # byebug
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
    #code
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    #code
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    #code
    # byebug
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end
end
