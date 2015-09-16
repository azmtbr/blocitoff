class UsersController < ApplicationController



  def show
    @user = User.find(params[:id])
    if @user.is_public?
      @items = @user.items
    else
      if current_user
         flash[:notice] = "The user you selected has a private profile. We are showing you yours."
        @items = current_user.items
      else
         flash[:error] = "You don't have access to this page. Please log in to continue."
         redirect_to root_path
      end
    end
  end
end
