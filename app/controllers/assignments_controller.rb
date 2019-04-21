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
       #@assignment[:user_id] = Student.find_by_user_id(current_user.id)
        #@assignment[:user_id] =
        @assignment.save!
        
        @students = Student.where("section_id = ?", params[:section_id])
        
        @students.each do |temp|
            @tempAssignment = Assignment.create(assignment_params)
            @tempAssignment[:user_id] = temp.user_id
            @tempAssignment[:section_id] = @section.id
            @tempAssignment.save!
        end
        
        redirect_to section_path(@section)
    end
    
    def edit
        @assignment = Assignment.find_by_id(params[:id])
    end
    
    def update
        @assignment = Assignment.find_by_id(params[:id])
        @student = Student.find_by_id(params[:student_id])
        
        @assignment.update(assignment_params)
        
        #redirect_to student_assignment_path(@student, @assignment)
            
    end
    
    def show
        @assignment = Assignment.where("user_id = ? AND id = ?", params[:student_id], params[:id])
        @student = Student.find_by_id(params[:student_id])
    end
    
    private
    
        def assignment_params
           params.require(:assignment).permit(:title, :description, :closeDate, :grade, :feedback, :completed) 
        end
end
