class AssignmentsController < ApplicationController
    
    def index
        @assignments = Assignment.where("student_id = ?", params[:student_id]) 
    end
    
    
    def new
        @assignment = Assignment.new
    end
    
    def create
=begin
       @assignment = Assignment.new(assignment_params)
        
        
        if @assignment.save!
            redirect_to @assignment
        else
            render 'new'
        end
=end

        @section = Section.find(params[:section_id])
        @assignment = @section.assignments.create(assignment_params)
        
        @assignment[:section_id] = @section.id
        @assignment[:user_id] = Student.find_by_user_id(current_user.id)
        
        @assignment.save!
        #@section.user_id
=begin
        @student = Student.new
        @student[:user_id] = current_user.id
        @student[:classroom_id] = params[:classroom_id]
        @student[:section_id] = @section.id
        @student.save!
       # @student[:section_id] 
=end
        #@user = User.where("id = ?", current_user.id)
       # User.update(current_user.id, :section => params[:sectionCode])
        #@section[:user_id] = current_user.id
        redirect_to section_path(@section)
    end
    
    def show
        @assignment = Assignment.where("user_id = ? AND id = ?", params[:student_id], params[:id])
    end
    
    private
    
        def assignment_params
           params.require(:assignment).permit(:title, :description, :closeDate) 
        end
end
