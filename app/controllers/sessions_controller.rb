class SessionsController < ApplicationController

  def create
    @user = User.where(email: params[:email]).first
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "Invalid email or password"
      render :new
    end
  end

end
