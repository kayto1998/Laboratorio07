class UsersController < ApplicationController
  def index
    @user = User.new
  end

 def new
    @user = User.new
 end 

 def create
   @user = User.new(user_params)
   if @user.save
     flash[:notice] = "User created."
     redirect_to root_path
   else
     render 'new'
   end
 end

 def show
  # doesn't need to assign the flash notice to the template, that's done automatically
  end
 
private
 
 def user_params
   params.require(:user).permit(:username,:password)
 end


end