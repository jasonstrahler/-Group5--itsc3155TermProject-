class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @currentUser = User.find(current_user.id)
  end
  
  def index
    @classrooms = Classroom.all
    
    @user = User.find_by_id(current_user.id)
    
    
    end
  
  def new
    @classroom = Classroom.new
  end
  
  def create
    @classroom = Classroom.new(classroom_params)
        
    if @classroom.save
        redirect_to @classroom
    else
        render 'new'
    end
  end
  

  
  
  private
    def classroom_params
      params.require(:classroom).permit(:ClassName, :ProfessorName, :ClassDepartment)   
    end
end
