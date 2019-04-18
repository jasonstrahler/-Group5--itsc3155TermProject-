class SectionsController < ApplicationController
    
    def show
        @section = Section.find(params[:id])
        @students = Student.where("section_id = ?", params[:id])
    end
    
    def new
        @section = Section.new
    end
    
    def create
        @classroom = Classroom.find(params[:classroom_id])
        @section = @classroom.sections.create(section_params)
        
        #@section.user_id
        
        @student = Student.new
        @student[:user_id] = current_user.id
        @student[:classroom_id] = params[:classroom_id]
        @student[:section_id] = @section.id
        @student.save!
       # @student[:section_id] 
        
        #@user = User.where("id = ?", current_user.id)
       # User.update(current_user.id, :section => params[:sectionCode])
        #@section[:user_id] = current_user.id
        redirect_to classroom_path(@classroom)
    end
    
    private
        def section_params
           params.require(:section).permit(:sectionCode, :classroom_id)
        end
end
