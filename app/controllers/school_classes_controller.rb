class SchoolClassesController < ApplicationController
  def new
    @schoolclass = SchoolClass.new
    render :new
  end

  def create
    @schoolclass = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
    render :show
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
    render :edit
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
