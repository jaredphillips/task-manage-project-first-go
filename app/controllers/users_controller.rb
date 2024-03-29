class UsersController < ApplicationController
  def new
  	@user = User.new()
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  		redirect_to @user, notice: "Welcome aboard!"
  	else
  		render 'new', alert: "Oops, try again."
  		# what is render
  		# it w
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

private
  
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
