class SectionsController < ApplicationController
    def create
        @classroom = Classroom.find(params[:classroom_id])
        @section = @classroom.sections.create(section_params)
        redirect_to classroom_path(@classroom)
    end
    
    private
        def section_params
           params.require(:section).permit(:sectionCode) 
        end
end
