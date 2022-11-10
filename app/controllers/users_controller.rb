class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to '/' if @user.save
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
