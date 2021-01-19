class StudentsController < ApplicationController

  def new 
    @student = Student.new
  end 

  def create 
    @student = Student.new(students_params)
    if @student.save 
      redirect_to @student
    else
      render new 
    end
  end 

  def show 
    @student = Student.find(params[:id])
  end 

  def edit 
    @student = Student.find(params[:id])
  end 

  def update
    @student = Student.find(params[:id])
    if @student.update(students_params) 
      redirect_to @student
    else
      render new
    end
  end

  private

  def students_params 
    params.require(:student).permit(:first_name, :last_name)
  end 
  
end
