class StudentsController < ApplicationController
  def edit
    
    # limits the number of tuples returned to 1 (first one found)
   @student = Student.find_by(:user_id => params[:id])
    
  end
  
  def update
    
    # doesn't update the correct student
    # THATS TO DO
    # at the moment, there are multiple records returned, but we need the 
    # one given in the URL
    @student = Student.find_by(:user_id => params[:id])
    @student.update(student_params)
    
    redirect_to @student
end
  def show
    @student = User.find(params[:id])
  end
  
  private 
    def student_params
           params.require(:student).permit(:grade)
    end
end
