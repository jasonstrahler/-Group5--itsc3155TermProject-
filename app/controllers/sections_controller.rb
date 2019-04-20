class SectionsController < ApplicationController
    
    def show
        @section = Section.find(params[:id])
        @students = Student.where("section_id = ?", params[:id])
        
        @currentUser = User.find(current_user.id)
    end
    
    def new
        @section = Section.new
    end
    
    def create
        @classroom = Classroom.find(params[:classroom_id])
        @section = @classroom.sections.create(section_params)
        @section[:classroom_id] = @classroom.id
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
    
    def destroy
        @student = Student.find_by user_id: current_user.id, section_id: params[:id]
        if(@student.present?)
            @student.destroy
            
                    respond_to do |format|
                format.html { render :template => "classrooms/destroy" }
            end

        end
    end
    
    def join
        @student = Student.new
        @student[:user_id] = current_user.id
        @student[:section_id] = params[:id]
        @student[:classroom_id] = Section.find(params[:id]).classroom_id
        @student.save!
        
                    respond_to do |format|
                format.html { render :template => "sections/join" }
            end
    end

    
    private
        def section_params
           params.require(:section).permit(:sectionCode, :classroom_id)
        end
end
