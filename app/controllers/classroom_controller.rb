class ClassroomController < ApplicationController
  def classroom
  end
  
  def show
  end
  
  def index
    @classrooms = Classroom.all
  end
  
  def new
    @classroom = Classroom.new
  end
  
  def create
    @class = Classroom.new(classroom_params)
        
    if @class.save
        redirect_to @class
    else
        render 'new'
    end
  end
  
  
  private
    def classroom_params
      params.require(:classroom)    
    end
end
