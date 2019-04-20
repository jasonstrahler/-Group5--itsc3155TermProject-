class AssignmentsController < ApplicationController
    
    def index
        @assignments = Assignment.where("student_id = ?", params[:student_id]) 
    end
    
    
    def new
        @assignment = Assignment.new
    end
    
    def create
       @assignment = Assignment.new(assignment_params)
        
        
        if @assignment.save!
            redirect_to @assignment
        else
            render 'new'
        end
    end
    
    def show
        @assignment = Assignment.where("user_id = ? AND id = ?", params[:student_id], params[:id])
    end
    
    private
    
        def assignment_params
           params.require(:assignment).permit(:title, :description) 
        end
end
