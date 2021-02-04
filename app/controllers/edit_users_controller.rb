class EditUsersController < ApplicationController
  
  def new
    @edit_user = EditUser.new
  end

  def create
    @edit_user = EditUser.new(edit_user_params)
    @edit_user.user_id = current_user.id
    @edit_user.save
    redirect_to edit_user_path  
  end
  
  def index
    @edit_users = EditUser.all
  end
  
  private
  def edit_user_params
    params.require(:edit_user).permit(:name, :image_id, :introduction)
  end
  
end
