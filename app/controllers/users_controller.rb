class UsersController < ApplicationController
  before_action :authenticate_user!



  def show
    @user = User.find_by(params[:id])
    @items = @user.items

   if @user
     flash[:notice] = "Welcome to Bloccit, #{@user.email}!"
   else
     flash[:notice] = "You need to be signed in to continue."
     redirect_to user_session_path
   end

  end


end
