class SessionsController < ApplicationController

  def new; end

  def create
    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:error] = "Email or Password incorrect"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
