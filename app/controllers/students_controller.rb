class StudentsController < ApplicationController
  def index
    @student = User_Info.where(:user_id == current_user.id)
  end
  
  def show
    @student = User.find(params[:id])
  end
end
